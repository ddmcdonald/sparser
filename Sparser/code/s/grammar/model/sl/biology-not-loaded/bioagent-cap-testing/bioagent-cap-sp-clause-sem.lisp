(in-package :cl-user)
(defparameter *clause-semantics-list*
'(("What genes does mir-128 regulate?"
   (:var mv17529 :isa regulate :object mv17531 :agent mv17530 :present "PRESENT" :raw-text
    "regulate")
   (:var mv17531 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17530 :isa bio-entity :name "mir-128"))
  ("what transcription factors does miR-200c regulate?"
   (:var mv17537 :isa regulate :object mv17538 :agent mv17534 :present "PRESENT" :raw-text
    "regulate")
   (:var mv17538 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv17534 :isa micro-rna :raw-text "miR-200c" :name "MIR200C" :uid "NCIT:C82157"))
  ("Tell me about stat3's involvement in apoptosis"
   (:var mv17540 :isa tell :theme mv17544 :theme mv17541 :present "PRESENT")
   (:var mv17544 :isa involve :theme mv17546 :participant mv17543)
   (:var mv17546 :isa apoptosis :raw-text "apoptosis")
   (:var mv17543 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17541 :isa interlocutor :name "speaker"))
  ("What are the genes that have strong evidence of being regulated by mir-122-5p?"
   (:var mv17551 :isa be :subject mv17550 :predicate mv17566 :present "PRESENT")
   (:var mv17550 :isa what)
   (:var mv17566 :isa gene :plural t :predication mv17556 :has-determiner "THE" :raw-text "genes")
   (:var mv17556 :isa have :possessor mv17566 :that-rel t :thing-possessed mv17558 :present
    "PRESENT")
   (:var mv17558 :isa evidence :fact mv17561 :predication mv17557)
   (:var mv17561 :isa regulate :agent mv17549 :progressive mv17560 :raw-text "regulated")
   (:var mv17549 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv17560 :isa be) (:var mv17557 :isa strong))
  ("What is stat3's involvement in apoptosis?"
   (:var mv17569 :isa be :subject mv17568 :predicate mv17571 :present "PRESENT")
   (:var mv17568 :isa what) (:var mv17571 :isa involve :theme mv17573 :participant mv17570)
   (:var mv17573 :isa apoptosis :raw-text "apoptosis")
   (:var mv17570 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is stat3's role in apoptosis?"
   (:var mv17577 :isa be :subject mv17576 :predicate mv17579 :present "PRESENT")
   (:var mv17576 :isa what) (:var mv17579 :isa role :process mv17581 :participant mv17578)
   (:var mv17581 :isa apoptosis :raw-text "apoptosis")
   (:var mv17578 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is stat3's role in apoptotic regulation?"
   (:var mv17585 :isa be :subject mv17584 :predicate mv17587 :present "PRESENT")
   (:var mv17584 :isa what) (:var mv17587 :isa role :process mv17591 :participant mv17586)
   (:var mv17591 :isa regulate :cellular-process mv17589 :raw-text "regulation")
   (:var mv17589 :isa apoptosis :raw-text "apoptotic")
   (:var mv17586 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is the evidence that miR-148a-3p targets DNMT1?"
   (:var mv17596 :isa be :subject mv17595 :predicate mv17603 :present "PRESENT")
   (:var mv17595 :isa what) (:var mv17603 :isa evidence :statement mv17602 :has-determiner "THE")
   (:var mv17602 :isa target :agent mv17593 :object mv17594 :present "PRESENT" :raw-text "targets")
   (:var mv17593 :isa micro-rna :raw-text "miR-148a-3p" :name "microRNA 148a-3p" :uid
    "MIMAT0000243")
   (:var mv17594 :isa protein :raw-text "DNMT1" :uid "UP:P26358" :name "DNMT1_HUMAN"))
  ("what transcription factors does miR-124-3p regulate?"
   (:var mv17609 :isa regulate :object mv17610 :agent mv17606 :present "PRESENT" :raw-text
    "regulate")
   (:var mv17610 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv17606 :isa micro-rna :raw-text "miR-124-3p" :name "microRNA 124-3p" :uid
    "MIMAT0000422"))
  ("what transcription factors does miR-200c-3p regulate?"
   (:var mv17616 :isa regulate :object mv17617 :agent mv17613 :present "PRESENT" :raw-text
    "regulate")
   (:var mv17617 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv17613 :isa micro-rna :raw-text "miR-200c-3p" :name "microRNA 200c-3p" :uid
    "MIMAT0000617"))
  ("What is the mutation significance of TP53 in ovarian cancer?"
   (:var mv17621 :isa be :subject mv17620 :predicate mv17624 :present "PRESENT")
   (:var mv17620 :isa what)
   (:var mv17624 :isa significance :context mv17619 :agent mv17618 :has-determiner "THE" :modifier
    mv17623)
   (:var mv17619 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv17618 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv17623 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 for ovarian cancer?"
   (:var mv17632 :isa be :subject mv17631 :predicate mv17635 :present "PRESENT")
   (:var mv17631 :isa what)
   (:var mv17635 :isa significance :context mv17630 :agent mv17629 :has-determiner "THE" :modifier
    mv17634)
   (:var mv17630 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv17629 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv17634 :isa mutation :raw-text "mutation"))
  ("What are synonyms for BRAF?"
   (:var mv17641 :isa be :subject mv17640 :predicate mv17647 :present "PRESENT")
   (:var mv17640 :isa what) (:var mv17647 :isa has-synonym :plural t :item mv17645)
   (:var mv17645 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some genes that are mutated in breast cancer?"
   (:var mv17650 :isa be :subject mv17649 :predicate mv17661 :present "PRESENT")
   (:var mv17649 :isa what)
   (:var mv17661 :isa gene :plural t :predication mv17659 :quantifier mv17651 :raw-text "genes")
   (:var mv17659 :isa mutation :object mv17661 :that-rel t :context mv17648 :present "PRESENT"
    :raw-text "mutated")
   (:var mv17648 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv17651 :isa some :word "some"))
  ("what genes are mutated in breast cancer?"
   (:var mv17670 :isa mutation :object mv17669 :context mv17662 :present "PRESENT" :raw-text
    "mutated")
   (:var mv17669 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17662 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Does phosphorylation at S221 activate MAP2K2?"
   (:var mv17684 :isa polar-question :statement mv17682)
   (:var mv17682 :isa bio-activate :agent mv17674 :object mv17672 :raw-text "activate")
   (:var mv17674 :isa phosphorylate :site mv17681 :raw-text "phosphorylation")
   (:var mv17681 :isa residue-on-protein :raw-text "S221" :position mv17679 :amino-acid mv17677)
   (:var mv17679 :isa number :value 221) (:var mv17677 :isa amino-acid :name "serine" :letter "S")
   (:var mv17672 :isa protein :raw-text "MAP2K2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Does phosphorylation at S222 activate MAP2K1?"
   (:var mv17697 :isa polar-question :statement mv17695)
   (:var mv17695 :isa bio-activate :agent mv17687 :object mv17685 :raw-text "activate")
   (:var mv17687 :isa phosphorylate :site mv17694 :raw-text "phosphorylation")
   (:var mv17694 :isa residue-on-protein :raw-text "S222" :position mv17692 :amino-acid mv17690)
   (:var mv17692 :isa number :value 222) (:var mv17690 :isa amino-acid :name "serine" :letter "S")
   (:var mv17685 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Simulate the MAP2K1-MAPK1 complex"
   (:var mv17700 :isa simulate :object mv17704 :present "PRESENT" :raw-text "Simulate")
   (:var mv17704 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv17699
    :component mv17698)
   (:var mv17699 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv17698 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What are the members of ERK?"
   (:var mv17706 :isa be :subject mv17705 :predicate mv17714 :present "PRESENT")
   (:var mv17705 :isa what) (:var mv17714 :isa member :plural t :set mv17711 :has-determiner "THE")
   (:var mv17711 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the members of MEK?"
   (:var mv17716 :isa be :subject mv17715 :predicate mv17724 :present "PRESENT")
   (:var mv17715 :isa what) (:var mv17724 :isa member :plural t :set mv17721 :has-determiner "THE")
   (:var mv17721 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What are the members of RAF?"
   (:var mv17726 :isa be :subject mv17725 :predicate mv17734 :present "PRESENT")
   (:var mv17725 :isa what) (:var mv17734 :isa member :plural t :set mv17731 :has-determiner "THE")
   (:var mv17731 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What are the members of the RAF family?"
   (:var mv17736 :isa be :subject mv17735 :predicate mv17748 :present "PRESENT")
   (:var mv17735 :isa what) (:var mv17748 :isa member :plural t :set mv17746 :has-determiner "THE")
   (:var mv17746 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What are the members of the RAS family?"
   (:var mv17751 :isa be :subject mv17750 :predicate mv17759 :present "PRESENT")
   (:var mv17750 :isa what) (:var mv17759 :isa member :plural t :set mv17749 :has-determiner "THE")
   (:var mv17749 :isa protein-family :has-determiner "THE" :raw-text "RAS family" :name "Ras"
    :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What is another name for BRAF?"
   (:var mv17761 :isa be :subject mv17760 :predicate mv17764 :present "PRESENT")
   (:var mv17760 :isa what) (:var mv17764 :isa has-name :item mv17767 :quantifier mv17762)
   (:var mv17767 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17762 :isa another :word "another"))
  ("What is another name for MAP2K1?"
   (:var mv17771 :isa be :subject mv17770 :predicate mv17774 :present "PRESENT")
   (:var mv17770 :isa what) (:var mv17774 :isa has-name :item mv17769 :quantifier mv17772)
   (:var mv17769 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv17772 :isa another :word "another"))
  ("How does STAT3 affect c-fos"
   (:var mv17782 :isa affect :manner mv17780 :agent mv17778 :object mv17779 :present "PRESENT"
    :raw-text "affect")
   (:var mv17780 :isa how)
   (:var mv17778 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17779 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List some genes regulated by elk1" (:var mv17784 :isa list :theme mv17790 :present "PRESENT")
   (:var mv17790 :isa gene :plural t :predication mv17788 :quantifier mv17785 :raw-text "genes")
   (:var mv17788 :isa regulate :object mv17790 :agent mv17783 :past "PAST" :raw-text "regulated")
   (:var mv17783 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17785 :isa some :word "some"))
  ("List some of the genes regulated by elk1"
   (:var mv17794 :isa list :theme mv17805 :present "PRESENT")
   (:var mv17805 :isa gene :plural t :predication mv17800 :quantifier mv17795 :has-determiner "THE"
    :raw-text "genes")
   (:var mv17800 :isa regulate :object mv17805 :agent mv17793 :past "PAST" :raw-text "regulated")
   (:var mv17793 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17795 :isa some :word "some"))
  ("List the genes regulated by elk1" (:var mv17809 :isa list :theme mv17815 :present "PRESENT")
   (:var mv17815 :isa gene :plural t :predication mv17813 :has-determiner "THE" :raw-text "genes")
   (:var mv17813 :isa regulate :object mv17815 :agent mv17808 :past "PAST" :raw-text "regulated")
   (:var mv17808 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What are the common upstream regulators of AKT1 and BRAF?"
   (:var mv17820 :isa be :subject mv17819 :predicate mv17835 :present "PRESENT")
   (:var mv17819 :isa what)
   (:var mv17835 :isa regulator :plural t :theme mv17830 :has-determiner "THE" :predication mv17822
    :context mv17823 :raw-text "regulators")
   (:var mv17830 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv17818 mv17829))
   (:var mv17818 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv17829 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17822 :isa common) (:var mv17823 :isa upstream-segment :raw-text "upstream"))
  ("What are the common upstreams of AKT and BRAF?"
   (:var mv17837 :isa be :subject mv17836 :predicate mv17850 :present "PRESENT")
   (:var mv17836 :isa what)
   (:var mv17850 :isa upstream-segment :plural t :pathwaycomponent mv17846 :has-determiner "THE"
    :predication mv17839 :raw-text "upstreams")
   (:var mv17846 :isa collection :raw-text "AKT and BRAF" :type protein-family :number 2 :items
    (mv17843 mv17845))
   (:var mv17843 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066")
   (:var mv17845 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17839 :isa common))
  ("What are the common upstreams of AKT1 and BRAF?"
   (:var mv17853 :isa be :subject mv17852 :predicate mv17865 :present "PRESENT")
   (:var mv17852 :isa what)
   (:var mv17865 :isa upstream-segment :plural t :pathwaycomponent mv17861 :has-determiner "THE"
    :predication mv17855 :raw-text "upstreams")
   (:var mv17861 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv17851 mv17860))
   (:var mv17851 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv17860 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17855 :isa common))
  ("What are the genes that smad2 regulates?"
   (:var mv17868 :isa be :subject mv17867 :predicate mv17875 :present "PRESENT")
   (:var mv17867 :isa what)
   (:var mv17875 :isa gene :plural t :predication mv17873 :has-determiner "THE" :raw-text "genes")
   (:var mv17873 :isa regulate :object mv17875 :that-rel t :agent mv17866 :present "PRESENT"
    :raw-text "regulates")
   (:var mv17866 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv17880 :isa be :subject mv17879 :predicate mv17891 :present "PRESENT")
   (:var mv17879 :isa what)
   (:var mv17891 :isa micro-rna :plural t :predication mv17885 :has-determiner "THE" :raw-text
    "miRNAs")
   (:var mv17885 :isa regulate :agent mv17891 :that-rel t :object mv17889 :present "PRESENT"
    :raw-text "regulate")
   (:var mv17889 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number
    5 :items (mv17886 mv17887 mv17876 mv17877 mv17878))
   (:var mv17886 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv17887 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv17876 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17877 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv17878 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the miRNAs that regulate EGFR, SRF, and STAT3"
   (:var mv17894 :isa be :subject mv17893 :predicate mv17905 :present "PRESENT")
   (:var mv17893 :isa what)
   (:var mv17905 :isa micro-rna :plural t :predication mv17899 :has-determiner "THE" :raw-text
    "miRNAs")
   (:var mv17899 :isa regulate :agent mv17905 :that-rel t :object mv17903 :present "PRESENT"
    :raw-text "regulate")
   (:var mv17903 :isa collection :raw-text "EGFR, SRF, and STAT3" :type protein :number 3 :items
    (mv17900 mv17901 mv17892))
   (:var mv17900 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv17901 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv17892 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the regulators of SRF?"
   (:var mv17907 :isa be :subject mv17906 :predicate mv17915 :present "PRESENT")
   (:var mv17906 :isa what)
   (:var mv17915 :isa regulator :plural t :theme mv17912 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv17912 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does STAT3 regulate in the liver?"
   (:var mv17919 :isa regulate :|affected-process-OR-object| mv17917 :agent mv17916 :organ mv17922
    :present "PRESENT" :raw-text "regulate")
   (:var mv17917 :isa what)
   (:var mv17916 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17922 :isa liver :has-determiner "THE"))
  ("What does it regulate in the liver?"
   (:var mv17927 :isa regulate :|affected-process-OR-object| mv17924 :|agent-OR-cause| mv17926
    :organ mv17930 :present "PRESENT" :raw-text "regulate")
   (:var mv17924 :isa what) (:var mv17926 :isa pronoun/inanimate :word "it")
   (:var mv17930 :isa liver :has-determiner "THE"))
  ("What genes are regulated by SMAD2?"
   (:var mv17940 :isa regulate :object mv17939 :agent mv17932 :present "PRESENT" :raw-text
    "regulated")
   (:var mv17939 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17932 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes are regulated by SMDA2?"
   (:var mv17952 :isa regulate :object mv17951 :agent mv17950 :present "PRESENT" :raw-text
    "regulated")
   (:var mv17951 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17950 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by SRF?"
   (:var mv17962 :isa regulate :object mv17961 :agent mv17960 :present "PRESENT" :raw-text
    "regulated")
   (:var mv17961 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17960 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which of these are regulated by SMAD2?"
   (:var mv17971 :isa regulate :|affected-process-OR-object| mv17967 :agent mv17964 :present
    "PRESENT" :raw-text "regulated")
   (:var mv17967 :isa these :quantifier mv17965 :word "these") (:var mv17965 :isa which)
   (:var mv17964 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by SMDA2?"
   (:var mv17981 :isa regulate :|affected-process-OR-object| mv17977 :agent mv17974 :present
    "PRESENT" :raw-text "regulated")
   (:var mv17977 :isa these :quantifier mv17975 :word "these") (:var mv17975 :isa which)
   (:var mv17974 :isa bio-entity :name "SMDA2"))
  ("Which pathways use these?"
   (:var mv17988 :isa bio-use :agent mv17990 :object mv17989 :present "PRESENT" :raw-text "use")
   (:var mv17990 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv17989 :isa these :word "these"))
  ("Where does STAT3 regulate the expression of c-fos?"
   (:var mv17995 :isa regulate :location mv17993 :agent mv17991 :affected-process mv17997 :present
    "PRESENT" :raw-text "regulate")
   (:var mv17993 :isa where)
   (:var mv17991 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17997 :isa gene-transcript-express :object mv17992 :has-determiner "THE" :raw-text
    "expression")
   (:var mv17992 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("can you tell me all the transcription factors that are shared by elk1 and srf"
   (:var mv18021 :isa polar-question :statement mv18005)
   (:var mv18005 :isa tell :agent mv18004 :theme mv18020 :beneficiary mv18006 :modal "CAN")
   (:var mv18004 :isa interlocutor :name "hearer")
   (:var mv18020 :isa transcription-factor :plural t :predication mv18018 :quantifier mv18007
    :has-determiner "THE" :raw-text "transcription factors")
   (:var mv18018 :isa share :object mv18020 :that-rel t :participant mv18015 :modal "CAN" :raw-text
    "shared")
   (:var mv18015 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv18002 mv18014))
   (:var mv18002 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18014 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv18007 :isa all :word "all") (:var mv18006 :isa interlocutor :name "speaker"))
  ("can you tell me which transcription factors are shared by elk1 and srf"
   (:var mv18039 :isa polar-question :statement mv18027)
   (:var mv18027 :isa tell :agent mv18026 :theme mv18037 :theme mv18028 :modal "CAN")
   (:var mv18026 :isa interlocutor :name "hearer")
   (:var mv18037 :isa share :object mv18036 :participant mv18035 :modal "CAN" :raw-text "shared")
   (:var mv18036 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv18035 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv18024 mv18034))
   (:var mv18024 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18034 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv18028 :isa interlocutor :name "speaker"))
  ("what are the regulators of SRF?"
   (:var mv18041 :isa be :subject mv18040 :predicate mv18049 :present "PRESENT")
   (:var mv18040 :isa what)
   (:var mv18049 :isa regulator :plural t :theme mv18046 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv18046 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("what does stat regulate"
   (:var mv18053 :isa regulate :|affected-process-OR-object| mv18050 :agent mv18052 :present
    "PRESENT" :raw-text "regulate")
   (:var mv18050 :isa what)
   (:var mv18052 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("what is erbb?" (:var mv18055 :isa be :subject mv18054 :predicate mv18056 :present "PRESENT")
   (:var mv18054 :isa what)
   (:var mv18056 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("Is STAT3 involved in apoptosis?" (:var mv18063 :isa polar-question :statement mv18059)
   (:var mv18059 :isa involve :object mv18057 :theme mv18061 :past "PAST")
   (:var mv18057 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18061 :isa apoptosis :raw-text "apoptosis"))
  ("Is STAT3 involved in apoptotic regulation?"
   (:var mv18072 :isa polar-question :statement mv18066)
   (:var mv18066 :isa involve :object mv18064 :theme mv18070 :past "PAST")
   (:var mv18064 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18070 :isa regulate :cellular-process mv18068 :raw-text "regulation")
   (:var mv18068 :isa apoptosis :raw-text "apoptotic"))
  ("Is STAT3 involved in regulating apoptosis?"
   (:var mv18080 :isa polar-question :statement mv18075)
   (:var mv18075 :isa involve :object mv18073 :theme mv18077 :past "PAST")
   (:var mv18073 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18077 :isa regulate :affected-process mv18078 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv18078 :isa apoptosis :raw-text "apoptosis"))
  ("What apoptotic genes are regulated by STAT3"
   (:var mv18092 :isa regulate :object mv18091 :agent mv18081 :present "PRESENT" :raw-text
    "regulated")
   (:var mv18091 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv18083 :raw-text
    "genes")
   (:var mv18083 :isa apoptosis :raw-text "apoptotic")
   (:var mv18081 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the apoptotic genes" (:var mv18094 :isa list :theme mv18101 :present "PRESENT")
   (:var mv18101 :isa gene :plural t :has-determiner "THE" :cellular-process mv18096 :raw-text
    "genes")
   (:var mv18096 :isa apoptosis :raw-text "apoptotic"))
  ("What genes regulated by STAT3 are involved in apoptosis?"
   (:var mv18113 :isa involve :object mv18116 :theme mv18111 :present "PRESENT")
   (:var mv18116 :isa gene :plural t :predication mv18106 :has-determiner "WHAT" :raw-text "genes")
   (:var mv18106 :isa regulate :object mv18116 :agent mv18102 :past "PAST" :raw-text "regulated")
   (:var mv18102 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18111 :isa apoptosis :raw-text "apoptosis"))
  ("List genes regulated by STAT3" (:var mv18118 :isa list :theme mv18120 :present "PRESENT")
   (:var mv18120 :isa gene :plural t :predication mv18121 :raw-text "genes")
   (:var mv18121 :isa regulate :object mv18120 :agent mv18117 :past "PAST" :raw-text "regulated")
   (:var mv18117 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are involved in apoptosis?"
   (:var mv18133 :isa involve :object mv18132 :theme mv18131 :present "PRESENT")
   (:var mv18132 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv18131 :isa apoptosis :raw-text "apoptosis"))
  ("What genes that STAT3 regulates are involved in apoptosis?"
   (:var mv18146 :isa involve :object mv18148 :theme mv18144 :present "PRESENT")
   (:var mv18148 :isa gene :plural t :predication mv18140 :has-determiner "WHAT" :raw-text "genes")
   (:var mv18140 :isa regulate :object mv18148 :that-rel t :agent mv18135 :present "PRESENT"
    :raw-text "regulates")
   (:var mv18135 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18144 :isa apoptosis :raw-text "apoptosis"))
  ("List the genes regulated by STAT3" (:var mv18150 :isa list :theme mv18156 :present "PRESENT")
   (:var mv18156 :isa gene :plural t :predication mv18154 :has-determiner "THE" :raw-text "genes")
   (:var mv18154 :isa regulate :object mv18156 :agent mv18149 :past "PAST" :raw-text "regulated")
   (:var mv18149 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the STAT3 regulated genes" (:var mv18160 :isa list :theme mv18166 :present "PRESENT")
   (:var mv18166 :isa gene :plural t :has-determiner "THE" :predication mv18162 :raw-text "genes")
   (:var mv18162 :isa regulate :object mv18166 :agent mv18159 :raw-text "regulated")
   (:var mv18159 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What kinases are regulated by STAT3?"
   (:var mv18175 :isa regulate :object mv18174 :agent mv18167 :present "PRESENT" :raw-text
    "regulated")
   (:var mv18174 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv18167 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What kinases are involved in apoptosis?"
   (:var mv18185 :isa involve :object mv18184 :theme mv18183 :present "PRESENT")
   (:var mv18184 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv18183 :isa apoptosis :raw-text "apoptosis"))
  ("What STAT3 regulated genes are involved in aptosis"
   (:var mv18198 :isa involve :object mv18197 :present "PRESENT")
   (:var mv18197 :isa gene :plural t :has-determiner "WHAT" :predication mv18189 :raw-text "genes")
   (:var mv18189 :isa regulate :object mv18197 :agent mv18187 :raw-text "regulated")
   (:var mv18187 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Let me know if any of the genes stat3 regulates are involved in apoptosis"
   (:var mv18201 :isa let :complement mv18222 :present "PRESENT")
   (:var mv18222 :isa know :agent mv18202 :statement mv18221 :present "PRESENT")
   (:var mv18202 :isa interlocutor :name "speaker")
   (:var mv18221 :isa wh-question :statement mv18216 :wh if)
   (:var mv18216 :isa involve :object mv18220 :theme mv18214 :present "PRESENT")
   (:var mv18220 :isa gene :plural t :quantifier mv18205 :predication mv18210 :has-determiner "THE"
    :raw-text "genes")
   (:var mv18205 :isa any :word "any")
   (:var mv18210 :isa regulate :object mv18220 :agent mv18200 :present "PRESENT" :raw-text
    "regulates")
   (:var mv18200 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18214 :isa apoptosis :raw-text "apoptosis"))
  ("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
   (:var mv18224 :isa let :complement mv18246 :present "PRESENT")
   (:var mv18246 :isa know :agent mv18225 :statement mv18245 :present "PRESENT")
   (:var mv18225 :isa interlocutor :name "speaker")
   (:var mv18245 :isa wh-question :statement mv18240 :wh whether)
   (:var mv18240 :isa involve :object mv18244 :theme mv18238 :present "PRESENT")
   (:var mv18244 :isa gene :plural t :quantifier mv18229 :predication mv18234 :has-determiner "THE"
    :raw-text "genes")
   (:var mv18229 :isa any :word "any")
   (:var mv18234 :isa regulate :object mv18244 :agent mv18223 :present "PRESENT" :raw-text
    "regulates")
   (:var mv18223 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18238 :isa apoptosis :raw-text "apoptosis"))
  ("Look up which genes targeted by stat3 are involved in apoptosis" (:var mv18265 :isa look-up))
  ("Tell me how stat3 is involved in apoptosis"
   (:var mv18267 :isa tell :beneficiary mv18268 :present "PRESENT")
   (:var mv18268 :isa interlocutor :name "speaker"))
  ("Tell me if stat3 is involved in apoptosis"
   (:var mv18278 :isa tell :theme mv18287 :beneficiary mv18279 :present "PRESENT")
   (:var mv18287 :isa wh-question :statement mv18285 :wh if)
   (:var mv18285 :isa involve :object mv18277 :theme mv18284 :present "PRESENT")
   (:var mv18277 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18284 :isa apoptosis :raw-text "apoptosis")
   (:var mv18279 :isa interlocutor :name "speaker"))
  ("Tell me whether stat3 is involved in apoptosis"
   (:var mv18289 :isa tell :theme mv18299 :theme mv18290 :present "PRESENT")
   (:var mv18299 :isa wh-question :statement mv18297 :wh whether)
   (:var mv18297 :isa involve :object mv18288 :theme mv18296 :present "PRESENT")
   (:var mv18288 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18296 :isa apoptosis :raw-text "apoptosis")
   (:var mv18290 :isa interlocutor :name "speaker"))
  ("What are STAT3 regulated genes that are involved in apoptosis."
   (:var mv18302 :isa be :subject mv18301 :predicate mv18314 :present "PRESENT")
   (:var mv18301 :isa what)
   (:var mv18314 :isa gene :plural t :predication mv18312 :predication mv18303 :raw-text "genes")
   (:var mv18312 :isa involve :object mv18314 :that-rel t :theme mv18310 :present "PRESENT")
   (:var mv18310 :isa apoptosis :raw-text "apoptosis")
   (:var mv18303 :isa regulate :object mv18314 :agent mv18300 :raw-text "regulated")
   (:var mv18300 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are STAT3 regulated genes that are involved in apoptosis?"
   (:var mv18317 :isa be :subject mv18316 :predicate mv18329 :present "PRESENT")
   (:var mv18316 :isa what)
   (:var mv18329 :isa gene :plural t :predication mv18327 :predication mv18318 :raw-text "genes")
   (:var mv18327 :isa involve :object mv18329 :that-rel t :theme mv18325 :present "PRESENT")
   (:var mv18325 :isa apoptosis :raw-text "apoptosis")
   (:var mv18318 :isa regulate :object mv18329 :agent mv18315 :raw-text "regulated")
   (:var mv18315 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes downstream of stat3 are involved in apoptosis?"
   (:var mv18341 :isa involve :object mv18334 :theme mv18340 :present "PRESENT")
   (:var mv18334 :isa downstream-segment :pathwaycomponent mv18330 :has-determiner "WHAT" :modifier
    mv18333 :raw-text "downstream")
   (:var mv18330 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18333 :isa gene :plural t :raw-text "genes")
   (:var mv18340 :isa apoptosis :raw-text "apoptosis"))
  ("What is the involvement of stat3 in apoptotic regulation?"
   (:var mv18346 :isa be :subject mv18345 :predicate mv18348 :present "PRESENT")
   (:var mv18345 :isa what)
   (:var mv18348 :isa involve :theme mv18353 :participant mv18344 :has-determiner "THE")
   (:var mv18353 :isa regulate :cellular-process mv18351 :raw-text "regulation")
   (:var mv18351 :isa apoptosis :raw-text "apoptotic")
   (:var mv18344 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve calcium?"
   (:var mv18359 :isa involve :theme mv18361 :object mv18360 :present "PRESENT")
   (:var mv18361 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv18360 :isa calcium :raw-text "calcium"))
  ("What processes involve srf"
   (:var mv18367 :isa involve :theme mv18369 :object mv18368 :present "PRESENT")
   (:var mv18369 :isa bio-process :plural t :has-determiner "WHAT" :raw-text "processes")
   (:var mv18368 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which stat3 regulated genes are involved in apoptosis?"
   (:var mv18381 :isa involve :object mv18380 :theme mv18378 :present "PRESENT")
   (:var mv18380 :isa gene :plural t :has-determiner "WHICH" :predication mv18372 :raw-text
    "genes")
   (:var mv18372 :isa regulate :object mv18380 :agent mv18370 :raw-text "regulated")
   (:var mv18370 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18378 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3 regulated genes in the liver are involved in apoptosis?"
   (:var mv18397 :isa involve :object mv18400 :theme mv18394 :present "PRESENT")
   (:var mv18400 :isa gene :plural t :organ mv18390 :has-determiner "WHICH" :predication mv18385
    :raw-text "genes")
   (:var mv18390 :isa liver :has-determiner "THE")
   (:var mv18385 :isa regulate :object mv18400 :agent mv18383 :raw-text "regulated")
   (:var mv18383 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18394 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3-regulated genes are involved in apoptosis?"
   (:var mv18412 :isa involve :object mv18411 :theme mv18409 :present "PRESENT")
   (:var mv18411 :isa gene :plural t :has-determiner "WHICH" :predication mv18403 :raw-text
    "genes")
   (:var mv18403 :isa regulate :object mv18411 :agent mv18401 :raw-text "regulated")
   (:var mv18401 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18409 :isa apoptosis :raw-text "apoptosis"))
  ("Mek activates MAPK1."
   (:var mv18416 :isa bio-activate :agent mv18415 :object mv18414 :present "PRESENT" :raw-text
    "activates")
   (:var mv18415 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv18414 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("NRAS activates RAF."
   (:var mv18418 :isa bio-activate :agent mv18417 :object mv18419 :present "PRESENT" :raw-text
    "activates")
   (:var mv18417 :isa protein :raw-text "NRAS" :uid "UP:P01111" :name "RASN_HUMAN")
   (:var mv18419 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("MAPK1 phosphorylates ELK1"
   (:var mv18422 :isa phosphorylate :agent mv18420 :substrate mv18421 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv18420 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv18421 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1"
   (:var mv18425 :isa dephosphorylate :agent mv18423 :substrate mv18424 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv18423 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv18424 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("ELK1 positively regulates FOS."
   (:var mv18427 :isa upregulate :agent mv18426 :object mv18428 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv18426 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18428 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("EGFR binds the growth factor ligand EGF."
   (:var mv18432 :isa binding :binder mv18431 :direct-bindee mv18435 :present "PRESENT" :raw-text
    "binds")
   (:var mv18431 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv18435 :isa protein :has-determiner "THE" :modifier mv18430 :modifier mv18434 :raw-text
    "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv18430 :isa growth-factor :raw-text "growth factor")
   (:var mv18434 :isa ligand :raw-text "ligand"))
  ("revert that" (:var mv18436 :isa revert :present "PRESENT" :raw-text "revert"))
  ("The EGFR-EGF complex binds another EGFR-EGF complex."
   (:var mv18442 :isa binding :binder mv18449 :direct-bindee mv18450 :present "PRESENT" :raw-text
    "binds")
   (:var mv18449 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGF" :component mv18440
    :component mv18439)
   (:var mv18440 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv18439 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv18450 :isa bio-complex :quantifier mv18443 :raw-text "EGFR-EGF" :component mv18445
    :component mv18444)
   (:var mv18443 :isa another :word "another")
   (:var mv18445 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv18444 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("The EGFR-EGFR complex binds GRB2."
   (:var mv18456 :isa binding :binder mv18458 :direct-bindee mv18451 :present "PRESENT" :raw-text
    "binds")
   (:var mv18458 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGFR" :component mv18453
    :component mv18453)
   (:var mv18453 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv18451 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("undo that" (:var mv18459 :isa undo :present "PRESENT" :raw-text "undo"))
  ("EGFR-bound GRB2 binds SOS1."
   (:var mv18465 :isa binding :binder mv18461 :direct-bindee mv18462 :present "PRESENT" :raw-text
    "binds")
   (:var mv18461 :isa protein :predication mv18464 :raw-text "GRB2" :uid "UP:P62993" :name
    "GRB2_HUMAN")
   (:var mv18464 :isa binding :direct-bindee mv18461 :binder mv18463 :raw-text "bound")
   (:var mv18463 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv18462 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN"))
  ("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
   (:var mv18469 :isa binding :binder mv18467 :direct-bindee mv18470 :present "PRESENT" :raw-text
    "binds")
   (:var mv18467 :isa protein :predication mv18468 :raw-text "SOS1" :uid "UP:Q07889" :name
    "SOS1_HUMAN")
   (:var mv18468 :isa binding :direct-bindee mv18467 :binder mv18466 :raw-text "bound")
   (:var mv18466 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN")
   (:var mv18470 :isa protein :predication mv18477 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv18477 :isa binding :direct-bindee mv18470 :that-rel t :bindee mv18476 :present "PRESENT"
    :negation mv18473 :raw-text "bound")
   (:var mv18476 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv18473 :isa not :word "not"))
  ("SOS1-bound NRAS binds GTP."
   (:var mv18482 :isa binding :binder mv18481 :direct-bindee mv18483 :present "PRESENT" :raw-text
    "binds")
   (:var mv18481 :isa protein :predication mv18480 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv18480 :isa binding :direct-bindee mv18481 :binder mv18479 :raw-text "bound")
   (:var mv18479 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv18483 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP"))
  ("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
   (:var mv18493 :isa binding :binder mv18487 :direct-bindee mv18494 :present "PRESENT" :raw-text
    "binds")
   (:var mv18487 :isa protein :predication mv18495 :predication mv18486 :raw-text "NRAS" :uid
    "UP:P01111" :name "RASN_HUMAN")
   (:var mv18495 :isa binding :direct-bindee mv18487 :that-rel t :bindee mv18484 :present "PRESENT"
    :negation mv18490 :raw-text "bound")
   (:var mv18484 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv18490 :isa not :word "not")
   (:var mv18486 :isa binding :direct-bindee mv18487 :binder mv18485 :raw-text "bound")
   (:var mv18485 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP")
   (:var mv18494 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Undo" (:var mv18497 :isa undo :present "PRESENT" :raw-text "Undo"))
  ("How does BRAF affect MAP2K1?"
   (:var mv18502 :isa affect :manner mv18499 :agent mv18501 :object mv18498 :present "PRESENT"
    :raw-text "affect")
   (:var mv18499 :isa how)
   (:var mv18501 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv18498 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's highlight the downstream of AKT1."
   (:var mv18511 :isa explicit-suggestion :suggestion mv18505 :marker let-as-directive)
   (:var mv18505 :isa highlight :theme mv18507 :present "PRESENT")
   (:var mv18507 :isa downstream-segment :pathwaycomponent mv18504 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv18504 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated MAPK1 to the bottom."
   (:var mv18521 :isa explicit-suggestion :suggestion mv18515 :marker let-as-directive)
   (:var mv18515 :isa move-to :goal mv18519 :theme mv18513 :present "PRESENT")
   (:var mv18519 :isa bottom :has-determiner "THE")
   (:var mv18513 :isa protein :predication mv18516 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18516 :isa phosphorylate :substrate mv18513 :raw-text "phosphorylated"))
  ("Let's put AKT1, MAPK1 into mitochondrion."
   (:var mv18530 :isa explicit-suggestion :suggestion mv18526 :marker let-as-directive)
   (:var mv18526 :isa put-something-somewhere :theme mv18523 :present "PRESENT")
   (:var mv18523 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show AKT1 on the top."
   (:var mv18538 :isa explicit-suggestion :suggestion mv18533 :marker let-as-directive)
   (:var mv18533 :isa show :at-relative-location mv18536 :|statement-OR-theme| mv18532 :present
    "PRESENT")
   (:var mv18536 :isa top-qua-location :has-determiner "THE")
   (:var mv18532 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Does ELK1 decrease FOS in the model?" (:var mv18549 :isa polar-question :statement mv18547)
   (:var mv18547 :isa decrease :agent mv18539 :object mv18543 :raw-text "decrease")
   (:var mv18539 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18543 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does ELK1 decrease the amount of FOS in the model?"
   (:var mv18564 :isa polar-question :statement mv18561)
   (:var mv18561 :isa decrease :agent mv18550 :|affected-process-OR-object| mv18555 :raw-text
    "decrease")
   (:var mv18550 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18555 :isa bio-amount :measured-item mv18557 :has-determiner "THE" :raw-text "amount")
   (:var mv18557 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does FOS decrease ELK1 in the model?" (:var mv18575 :isa polar-question :statement mv18573)
   (:var mv18573 :isa decrease :agent mv18567 :object mv18565 :raw-text "decrease")
   (:var mv18567 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18565 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Does FOS vanish if we increase the amount of ELK1 10 fold?"
   (:var mv18598 :isa polar-question :statement mv18597)
   (:var mv18597 :isa event-relation :subordinated-event mv18595 :event mv18592)
   (:var mv18595 :isa wh-question :statement mv18593 :wh if)
   (:var mv18593 :isa increase :|agent-OR-cause| mv18581 :level mv18591
    :|affected-process-OR-object| mv18585 :raw-text "increase")
   (:var mv18581 :isa interlocutor :name "person-and-machine")
   (:var mv18591 :isa measurement :number mv18588) (:var mv18588 :isa number :value 10)
   (:var mv18585 :isa bio-amount :measured-item mv18576 :has-determiner "THE" :raw-text "amount")
   (:var mv18576 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18592 :isa vanish :agent mv18578 :raw-text "vanish")
   (:var mv18578 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
   (:var mv18623 :isa polar-question :statement mv18622)
   (:var mv18622 :isa event-relation :subordinated-event mv18620 :event mv18616)
   (:var mv18620 :isa wh-question :statement mv18617 :wh if)
   (:var mv18617 :isa increase :|agent-OR-cause| mv18604 :|multiplier-OR-cause| mv18615
    :|affected-process-OR-object| mv18608 :raw-text "increase")
   (:var mv18604 :isa interlocutor :name "person-and-machine")
   (:var mv18615 :isa measurement :number mv18612) (:var mv18612 :isa number :value 10)
   (:var mv18608 :isa bio-amount :measured-item mv18599 :has-determiner "THE" :raw-text "amount")
   (:var mv18599 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18616 :isa vanish :agent mv18601 :raw-text "vanish")
   (:var mv18601 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
   (:var mv18645 :isa polar-question :statement mv18644)
   (:var mv18644 :isa event-relation :subordinated-event mv18642 :event mv18639)
   (:var mv18642 :isa wh-question :statement mv18640 :wh if)
   (:var mv18640 :isa increase :|agent-OR-cause| mv18630 :|multiplier-OR-cause| mv18638 :object
    mv18625 :raw-text "increase")
   (:var mv18630 :isa interlocutor :name "person-and-machine")
   (:var mv18638 :isa measurement :number mv18635) (:var mv18635 :isa number :value 10)
   (:var mv18625 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv18639 :isa vanish :agent mv18624 :raw-text "vanish")
   (:var mv18624 :isa protein :predication mv18627 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18627 :isa phosphorylate :substrate mv18624 :raw-text "phosphorylated"))
  ("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv18671 :isa polar-question :statement mv18670)
   (:var mv18670 :isa event-relation :subordinated-event mv18668 :event mv18664)
   (:var mv18668 :isa wh-question :statement mv18665 :wh if)
   (:var mv18665 :isa increase :|agent-OR-cause| mv18652 :|multiplier-OR-cause| mv18663
    :|affected-process-OR-object| mv18656 :raw-text "increase")
   (:var mv18652 :isa interlocutor :name "person-and-machine")
   (:var mv18663 :isa measurement :number mv18660) (:var mv18660 :isa number :value 10)
   (:var mv18656 :isa bio-amount :measured-item mv18647 :has-determiner "THE" :raw-text "amount")
   (:var mv18647 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv18664 :isa vanish :agent mv18646 :raw-text "vanish")
   (:var mv18646 :isa protein :predication mv18649 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18649 :isa phosphorylate :substrate mv18646 :raw-text "phosphorylated"))
  ("Does the amount of phosphorylated MAPK1 ever increase?"
   (:var mv18683 :isa polar-question :statement mv18681)
   (:var mv18681 :isa increase :cause mv18675 :adverb mv18678 :raw-text "increase")
   (:var mv18675 :isa bio-amount :measured-item mv18672 :has-determiner "THE" :raw-text "amount")
   (:var mv18672 :isa protein :predication mv18677 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18677 :isa phosphorylate :substrate mv18672 :raw-text "phosphorylated")
   (:var mv18678 :isa ever :name "ever"))
  ("Is MAP2K1 bound to MAPK1 eventually high?"
   (:var mv18693 :isa polar-question :statement mv18692)
   (:var mv18692 :isa copular-predication :item mv18684 :value mv18690 :predicate mv18686)
   (:var mv18684 :isa protein :predication mv18687 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv18687 :isa binding :direct-bindee mv18684 :bindee mv18685 :past "PAST" :raw-text
    "bound")
   (:var mv18685 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv18690 :isa high :adverb mv18689) (:var mv18689 :isa eventually :name "eventually")
   (:var mv18686 :isa be))
  ("Is MAPK1 bound to MAP2K1 transient?" (:var mv18702 :isa polar-question :statement mv18701)
   (:var mv18701 :isa copular-predication :item mv18694 :value mv18699 :predicate mv18696)
   (:var mv18694 :isa protein :predication mv18697 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18697 :isa binding :direct-bindee mv18694 :bindee mv18695 :past "PAST" :raw-text
    "bound")
   (:var mv18695 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv18699 :isa transient) (:var mv18696 :isa be))
  ("Is MAPK1-bound MAP2K1 sustained?" (:var mv18709 :isa polar-question :statement mv18708)
   (:var mv18708 :isa sustained :participant mv18704 :past "PAST")
   (:var mv18704 :isa protein :predication mv18706 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv18706 :isa binding :direct-bindee mv18704 :binder mv18703 :raw-text "bound")
   (:var mv18703 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is phosphorylated MAPK1 always high?" (:var mv18716 :isa polar-question :statement mv18715)
   (:var mv18715 :isa copular-predication :item mv18710 :value mv18714 :predicate mv18711)
   (:var mv18710 :isa protein :predication mv18712 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18712 :isa phosphorylate :substrate mv18710 :raw-text "phosphorylated")
   (:var mv18714 :isa high :adverb mv18713) (:var mv18713 :isa always :name "always")
   (:var mv18711 :isa be))
  ("Is phosphorylated MAPK1 eventually high?" (:var mv18723 :isa polar-question :statement mv18722)
   (:var mv18722 :isa copular-predication :item mv18717 :value mv18721 :predicate mv18718)
   (:var mv18717 :isa protein :predication mv18719 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18719 :isa phosphorylate :substrate mv18717 :raw-text "phosphorylated")
   (:var mv18721 :isa high :adverb mv18720) (:var mv18720 :isa eventually :name "eventually")
   (:var mv18718 :isa be))
  ("Is phosphorylated MAPK1 ever high?" (:var mv18730 :isa polar-question :statement mv18729)
   (:var mv18729 :isa copular-predication :item mv18724 :value mv18728 :predicate mv18725)
   (:var mv18724 :isa protein :predication mv18726 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18726 :isa phosphorylate :substrate mv18724 :raw-text "phosphorylated")
   (:var mv18728 :isa high :adverb mv18727) (:var mv18727 :isa ever :name "ever")
   (:var mv18725 :isa be))
  ("Is phosphorylated MAPK1 high at the end?" (:var mv18740 :isa polar-question :statement mv18739)
   (:var mv18739 :isa copular-predication :item mv18731 :value mv18734 :predicate mv18732)
   (:var mv18731 :isa protein :predication mv18733 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18733 :isa phosphorylate :substrate mv18731 :raw-text "phosphorylated")
   (:var mv18734 :isa high) (:var mv18732 :isa be))
  ("Is phosphorylated MAPK1 high?" (:var mv18746 :isa polar-question :statement mv18745)
   (:var mv18745 :isa copular-predication :item mv18741 :value mv18744 :predicate mv18742)
   (:var mv18741 :isa protein :predication mv18743 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18743 :isa phosphorylate :substrate mv18741 :raw-text "phosphorylated")
   (:var mv18744 :isa high) (:var mv18742 :isa be))
  ("Is phosphorylated MAPK1 sustained at a high level?"
   (:var mv18757 :isa polar-question :statement mv18751)
   (:var mv18751 :isa sustained :theme mv18747 :level mv18755 :past "PAST")
   (:var mv18747 :isa protein :predication mv18749 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18749 :isa phosphorylate :substrate mv18747 :raw-text "phosphorylated")
   (:var mv18755 :isa level :has-determiner "A" :predication mv18754 :raw-text "level")
   (:var mv18754 :isa high))
  ("Is phosphorylated MAPK1 sustained?" (:var mv18763 :isa polar-question :statement mv18762)
   (:var mv18762 :isa sustained :participant mv18758 :past "PAST")
   (:var mv18758 :isa protein :predication mv18760 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18760 :isa phosphorylate :substrate mv18758 :raw-text "phosphorylated"))
  ("Is phosphorylated MAPK1 transient?" (:var mv18769 :isa polar-question :statement mv18768)
   (:var mv18768 :isa copular-predication :item mv18764 :value mv18767 :predicate mv18765)
   (:var mv18764 :isa protein :predication mv18766 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18766 :isa phosphorylate :substrate mv18764 :raw-text "phosphorylated")
   (:var mv18767 :isa transient) (:var mv18765 :isa be))
  ("Is the MAP2K1-MAPK1 complex ever high?" (:var mv18780 :isa polar-question :statement mv18779)
   (:var mv18779 :isa copular-predication :item mv18778 :value mv18776 :predicate mv18772)
   (:var mv18778 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv18771
    :component mv18770)
   (:var mv18771 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv18770 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv18776 :isa high :adverb mv18775) (:var mv18775 :isa ever :name "ever")
   (:var mv18772 :isa be))
  ("Is the MAP2K1-MAPK1 complex formed?" (:var mv18789 :isa polar-question :statement mv18786)
   (:var mv18786 :isa bio-form :agent mv18788 :past "PAST" :raw-text "formed")
   (:var mv18788 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv18782
    :component mv18781)
   (:var mv18782 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv18781 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is the amount of FOS always low if we increase ELK1 10 fold?"
   (:var mv18812 :isa polar-question :statement mv18811)
   (:var mv18811 :isa event-relation :subordinated-event mv18807 :event mv18809)
   (:var mv18807 :isa wh-question :statement mv18801 :wh if)
   (:var mv18801 :isa increase :|agent-OR-cause| mv18799 :level mv18806 :object mv18790 :present
    "PRESENT" :raw-text "increase")
   (:var mv18799 :isa interlocutor :name "person-and-machine")
   (:var mv18806 :isa measurement :number mv18803) (:var mv18803 :isa number :value 10)
   (:var mv18790 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18809 :isa copular-predication :item mv18793 :value mv18797 :predicate mv18791)
   (:var mv18793 :isa bio-amount :measured-item mv18795 :has-determiner "THE" :raw-text "amount")
   (:var mv18795 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18797 :isa low :adverb mv18796) (:var mv18796 :isa always :name "always")
   (:var mv18791 :isa be))
  ("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
   (:var mv18837 :isa polar-question :statement mv18836)
   (:var mv18836 :isa event-relation :subordinated-event mv18832 :event mv18834)
   (:var mv18832 :isa wh-question :statement mv18824 :wh if)
   (:var mv18824 :isa increase :|agent-OR-cause| mv18822 :|multiplier-OR-cause| mv18830 :object
    mv18813 :present "PRESENT" :raw-text "increase")
   (:var mv18822 :isa interlocutor :name "person-and-machine")
   (:var mv18830 :isa measurement :number mv18827) (:var mv18827 :isa number :value 100)
   (:var mv18813 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18834 :isa copular-predication :item mv18816 :value mv18820 :predicate mv18814)
   (:var mv18816 :isa bio-amount :measured-item mv18818 :has-determiner "THE" :raw-text "amount")
   (:var mv18818 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18820 :isa low :adverb mv18819) (:var mv18819 :isa always :name "always")
   (:var mv18814 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"
   (:var mv18864 :isa polar-question :statement mv18863)
   (:var mv18863 :isa event-relation :subordinated-event mv18859 :event mv18861)
   (:var mv18859 :isa wh-question :statement mv18849 :wh if)
   (:var mv18849 :isa increase :|agent-OR-cause| mv18847 :level mv18857
    :|affected-process-OR-object| mv18851 :present "PRESENT" :raw-text "increase")
   (:var mv18847 :isa interlocutor :name "person-and-machine")
   (:var mv18857 :isa measurement :number mv18854) (:var mv18854 :isa number :value 100)
   (:var mv18851 :isa bio-amount :measured-item mv18838 :has-determiner "THE" :raw-text "amount")
   (:var mv18838 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18861 :isa copular-predication :item mv18841 :value mv18845 :predicate mv18839)
   (:var mv18841 :isa bio-amount :measured-item mv18843 :has-determiner "THE" :raw-text "amount")
   (:var mv18843 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18845 :isa high :adverb mv18844) (:var mv18844 :isa ever :name "ever")
   (:var mv18839 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
   (:var mv18893 :isa polar-question :statement mv18892)
   (:var mv18892 :isa event-relation :subordinated-event mv18888 :event mv18890)
   (:var mv18888 :isa wh-question :statement mv18876 :wh if)
   (:var mv18876 :isa increase :|agent-OR-cause| mv18874 :|multiplier-OR-cause| mv18885
    :|affected-process-OR-object| mv18878 :present "PRESENT" :raw-text "increase")
   (:var mv18874 :isa interlocutor :name "person-and-machine")
   (:var mv18885 :isa measurement :number mv18882) (:var mv18882 :isa number :value 100)
   (:var mv18878 :isa bio-amount :measured-item mv18865 :has-determiner "THE" :raw-text "amount")
   (:var mv18865 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18890 :isa copular-predication :item mv18868 :value mv18872 :predicate mv18866)
   (:var mv18868 :isa bio-amount :measured-item mv18870 :has-determiner "THE" :raw-text "amount")
   (:var mv18870 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18872 :isa high :adverb mv18871) (:var mv18871 :isa ever :name "ever")
   (:var mv18866 :isa be))
  ("Is the amount of MAPK1 phosphorylated eventually high?"
   (:var mv18903 :isa polar-question :statement mv18899)
   (:var mv18899 :isa phosphorylate :cause mv18897 :past "PAST" :raw-text "phosphorylated")
   (:var mv18897 :isa bio-amount :measured-item mv18894 :has-determiner "THE" :raw-text "amount")
   (:var mv18894 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 eventually high?"
   (:var mv18914 :isa polar-question :statement mv18913)
   (:var mv18913 :isa copular-predication :item mv18907 :value mv18911 :predicate mv18905)
   (:var mv18907 :isa bio-amount :measured-item mv18904 :has-determiner "THE" :raw-text "amount")
   (:var mv18904 :isa protein :predication mv18909 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18909 :isa phosphorylate :substrate mv18904 :raw-text "phosphorylated")
   (:var mv18911 :isa high :adverb mv18910) (:var mv18910 :isa eventually :name "eventually")
   (:var mv18905 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever high?"
   (:var mv18925 :isa polar-question :statement mv18924)
   (:var mv18924 :isa copular-predication :item mv18918 :value mv18922 :predicate mv18916)
   (:var mv18918 :isa bio-amount :measured-item mv18915 :has-determiner "THE" :raw-text "amount")
   (:var mv18915 :isa protein :predication mv18920 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18920 :isa phosphorylate :substrate mv18915 :raw-text "phosphorylated")
   (:var mv18922 :isa high :adverb mv18921) (:var mv18921 :isa ever :name "ever")
   (:var mv18916 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever increasing?"
   (:var mv18936 :isa polar-question :statement mv18934)
   (:var mv18934 :isa increase :cause mv18929 :adverb mv18932 :raw-text "increasing")
   (:var mv18929 :isa bio-amount :measured-item mv18926 :has-determiner "THE" :raw-text "amount")
   (:var mv18926 :isa protein :predication mv18931 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18931 :isa phosphorylate :substrate mv18926 :raw-text "phosphorylated")
   (:var mv18932 :isa ever :name "ever"))
  ("Is the amount of phosphorylated MAPK1 high?"
   (:var mv18946 :isa polar-question :statement mv18945)
   (:var mv18945 :isa copular-predication :item mv18940 :value mv18943 :predicate mv18938)
   (:var mv18940 :isa bio-amount :measured-item mv18937 :has-determiner "THE" :raw-text "amount")
   (:var mv18937 :isa protein :predication mv18942 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18942 :isa phosphorylate :substrate mv18937 :raw-text "phosphorylated")
   (:var mv18943 :isa high) (:var mv18938 :isa be))
  ("Is the amount of phosphorylated MAPK1 sometimes high?"
   (:var mv18957 :isa polar-question :statement mv18956)
   (:var mv18956 :isa copular-predication :item mv18950 :value mv18954 :predicate mv18948)
   (:var mv18950 :isa bio-amount :measured-item mv18947 :has-determiner "THE" :raw-text "amount")
   (:var mv18947 :isa protein :predication mv18952 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18952 :isa phosphorylate :substrate mv18947 :raw-text "phosphorylated")
   (:var mv18954 :isa high :adverb mv18953) (:var mv18953 :isa sometimes) (:var mv18948 :isa be))
  ("Is the amount of phosphorylated MAPK1 sustained at a high level?"
   (:var mv18972 :isa polar-question :statement mv18965)
   (:var mv18965 :isa sustained :theme mv18961 :level mv18969 :past "PAST")
   (:var mv18961 :isa bio-amount :measured-item mv18958 :has-determiner "THE" :raw-text "amount")
   (:var mv18958 :isa protein :predication mv18963 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18963 :isa phosphorylate :substrate mv18958 :raw-text "phosphorylated")
   (:var mv18969 :isa level :has-determiner "A" :predication mv18968 :raw-text "level")
   (:var mv18968 :isa high))
  ("Is the amount of phosphorylated MAPK1 sustained?"
   (:var mv18982 :isa polar-question :statement mv18980)
   (:var mv18980 :isa sustained :participant mv18976 :past "PAST")
   (:var mv18976 :isa bio-amount :measured-item mv18973 :has-determiner "THE" :raw-text "amount")
   (:var mv18973 :isa protein :predication mv18978 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18978 :isa phosphorylate :substrate mv18973 :raw-text "phosphorylated"))
  ("Is the amount of phosphorylated MAPK1 transient?"
   (:var mv18992 :isa polar-question :statement mv18991)
   (:var mv18991 :isa copular-predication :item mv18986 :value mv18989 :predicate mv18984)
   (:var mv18986 :isa bio-amount :measured-item mv18983 :has-determiner "THE" :raw-text "amount")
   (:var mv18983 :isa protein :predication mv18988 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18988 :isa phosphorylate :substrate mv18983 :raw-text "phosphorylated")
   (:var mv18989 :isa transient) (:var mv18984 :isa be))
  ("Will the amount of phosphorylated MAPK1 be high?"
   (:var mv19003 :isa polar-question :statement mv19001)
   (:var mv19001 :isa copular-predication :item mv18996 :value mv19000 :predicate mv18999)
   (:var mv18996 :isa bio-amount :measured-item mv18993 :has-determiner "THE" :raw-text "amount")
   (:var mv18993 :isa protein :predication mv18998 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18998 :isa phosphorylate :substrate mv18993 :raw-text "phosphorylated")
   (:var mv19000 :isa high) (:var mv18999 :isa be :modal "WILL"))
  ("is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv19026 :isa polar-question :statement mv19025)
   (:var mv19025 :isa event-relation :subordinated-event mv19022 :event mv19023)
   (:var mv19022 :isa wh-question :statement mv19012 :wh if)
   (:var mv19012 :isa increase :|agent-OR-cause| mv19010 :level mv19020
    :|affected-process-OR-object| mv19014 :present "PRESENT" :raw-text "increase")
   (:var mv19010 :isa interlocutor :name "person-and-machine")
   (:var mv19020 :isa measurement :number mv19017) (:var mv19017 :isa number :value 100)
   (:var mv19014 :isa bio-amount :measured-item mv19005 :has-determiner "THE" :raw-text "amount")
   (:var mv19005 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv19023 :isa copular-predication :item mv19004 :value mv19008 :predicate mv19006)
   (:var mv19004 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv19008 :isa low :adverb mv19007) (:var mv19007 :isa eventually :name "eventually")
   (:var mv19006 :isa be))
  ("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
   (:var mv19053 :isa polar-question :statement mv19052)
   (:var mv19052 :isa event-relation :subordinated-event mv19049 :event mv19050)
   (:var mv19049 :isa wh-question :statement mv19046 :wh if)
   (:var mv19046 :isa increase :|affected-process-OR-object| mv19035 :|multiplier-OR-cause| mv19044
    :raw-text "increased")
   (:var mv19035 :isa bio-amount :measured-item mv19028 :has-determiner "THE" :raw-text "amount")
   (:var mv19028 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv19044 :isa measurement :number mv19041) (:var mv19041 :isa number :value 100)
   (:var mv19050 :isa copular-predication :item mv19027 :value mv19032 :predicate mv19029)
   (:var mv19027 :isa protein :predication mv19030 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv19030 :isa active) (:var mv19032 :isa low :adverb mv19031)
   (:var mv19031 :isa eventually :name "eventually") (:var mv19029 :isa be))
  ("is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv19080 :isa polar-question :statement mv19079)
   (:var mv19079 :isa event-relation :subordinated-event mv19075 :event mv19077)
   (:var mv19075 :isa wh-question :statement mv19065 :wh if)
   (:var mv19065 :isa increase :|agent-OR-cause| mv19063 :level mv19073
    :|affected-process-OR-object| mv19067 :present "PRESENT" :raw-text "increase")
   (:var mv19063 :isa interlocutor :name "person-and-machine")
   (:var mv19073 :isa measurement :number mv19070) (:var mv19070 :isa number :value 100)
   (:var mv19067 :isa bio-amount :measured-item mv19055 :has-determiner "THE" :raw-text "amount")
   (:var mv19055 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv19077 :isa copular-predication :item mv19058 :value mv19061 :predicate mv19056)
   (:var mv19058 :isa bio-amount :measured-item mv19054 :has-determiner "THE" :raw-text "amount")
   (:var mv19054 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv19061 :isa low :adverb mv19060) (:var mv19060 :isa eventually :name "eventually")
   (:var mv19056 :isa be))
  ("is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"
   (:var mv19108 :isa polar-question :statement mv19107)
   (:var mv19107 :isa event-relation :subordinated-event mv19103 :event mv19105)
   (:var mv19103 :isa wh-question :statement mv19093 :wh if)
   (:var mv19093 :isa increase :|agent-OR-cause| mv19091 :level mv19101
    :|affected-process-OR-object| mv19095 :present "PRESENT" :raw-text "increase")
   (:var mv19091 :isa interlocutor :name "person-and-machine")
   (:var mv19101 :isa measurement :number mv19098) (:var mv19098 :isa number :value 100)
   (:var mv19095 :isa bio-amount :measured-item mv19082 :has-determiner "THE" :raw-text "amount")
   (:var mv19082 :isa molecule :raw-text "SB-525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv19105 :isa copular-predication :item mv19085 :value mv19089 :predicate mv19083)
   (:var mv19085 :isa bio-amount :measured-item mv19081 :has-determiner "THE" :raw-text "amount")
   (:var mv19081 :isa protein :predication mv19087 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv19087 :isa active) (:var mv19089 :isa low :adverb mv19088)
   (:var mv19088 :isa always :name "always") (:var mv19083 :isa be))
  ("Let's move AKT1 and MAPK1 into mitochondrion."
   (:var mv19119 :isa explicit-suggestion :suggestion mv19113 :marker let-as-directive)
   (:var mv19113 :isa move-to :at-relative-location mv19116 :theme mv19117 :present "PRESENT")
   (:var mv19116 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv19117 :isa collection :raw-text "AKT1 and MAPK1" :type protein :number 2 :items
    (mv19110 mv19111))
   (:var mv19110 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19111 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("FEN1 phosphorylates AKT1."
   (:var mv19122 :isa phosphorylate :agent mv19120 :substrate mv19121 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv19120 :isa protein :raw-text "FEN1" :uid "UP:P39748" :name "FEN1_HUMAN")
   (:var mv19121 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Move all into mitochondrion."
   (:var mv19124 :isa move-to :at-relative-location mv19127 :theme mv19129 :present "PRESENT")
   (:var mv19127 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv19129 :isa all :word "all"))
  ("AKT1 phosphorylates MAPK1."
   (:var mv19132 :isa phosphorylate :agent mv19130 :substrate mv19131 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv19130 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19131 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Let's highlight the upstream of phosphorylated MAPK1."
   (:var mv19142 :isa explicit-suggestion :suggestion mv19135 :marker let-as-directive)
   (:var mv19135 :isa highlight :theme mv19137 :present "PRESENT")
   (:var mv19137 :isa upstream-segment :pathwaycomponent mv19134 :has-determiner "THE" :raw-text
    "upstream")
   (:var mv19134 :isa protein :predication mv19140 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv19140 :isa phosphorylate :substrate mv19134 :raw-text "phosphorylated"))
  ("Let's show phosphorylated MAPK1 on the top."
   (:var mv19151 :isa explicit-suggestion :suggestion mv19145 :marker let-as-directive)
   (:var mv19145 :isa show :at-relative-location mv19149 :|statement-OR-theme| mv19144 :present
    "PRESENT")
   (:var mv19149 :isa top-qua-location :has-determiner "THE")
   (:var mv19144 :isa protein :predication mv19146 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv19146 :isa phosphorylate :substrate mv19144 :raw-text "phosphorylated"))
  ("Let's show the downstream of AKT1 on the top."
   (:var mv19164 :isa explicit-suggestion :suggestion mv19154 :marker let-as-directive)
   (:var mv19154 :isa show :at-relative-location mv19161 :|statement-OR-theme| mv19156 :present
    "PRESENT")
   (:var mv19161 :isa top-qua-location :has-determiner "THE")
   (:var mv19156 :isa downstream-segment :pathwaycomponent mv19153 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv19153 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move mitochondrion elements to the top."
   (:var mv19176 :isa explicit-suggestion :suggestion mv19167 :marker let-as-directive)
   (:var mv19167 :isa move-to :goal mv19173 :theme mv19174 :present "PRESENT")
   (:var mv19173 :isa top-qua-location :has-determiner "THE")
   (:var mv19174 :isa element :plural t :modifier mv19168)
   (:var mv19168 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173"))
  ("How does BRAF affect MAPK1?"
   (:var mv19181 :isa affect :manner mv19178 :agent mv19180 :object mv19177 :present "PRESENT"
    :raw-text "affect")
   (:var mv19178 :isa how)
   (:var mv19180 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19177 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect BRAF?"
   (:var mv19185 :isa affect :manner mv19183 :agent mv19182 :object mv19186 :present "PRESENT"
    :raw-text "affect")
   (:var mv19183 :isa how)
   (:var mv19182 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv19186 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the path between BRAF and MAPK1?"
   (:var mv19189 :isa be :subject mv19188 :predicate mv19191 :present "PRESENT")
   (:var mv19188 :isa what) (:var mv19191 :isa path :endpoints mv19195 :has-determiner "THE")
   (:var mv19195 :isa collection :raw-text "BRAF and MAPK1" :type protein :number 2 :items
    (mv19193 mv19187))
   (:var mv19193 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19187 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect JUND?"
   (:var mv19200 :isa affect :manner mv19198 :agent mv19197 :object mv19201 :present "PRESENT"
    :raw-text "affect")
   (:var mv19198 :isa how)
   (:var mv19197 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv19201 :isa protein :raw-text "JUND" :uid "UP:P17535" :name "JUND_HUMAN"))
  ("How does SETDB1 affect ADAM17?"
   (:var mv19206 :isa affect :manner mv19204 :agent mv19202 :object mv19203 :present "PRESENT"
    :raw-text "affect")
   (:var mv19204 :isa how)
   (:var mv19202 :isa protein :raw-text "SETDB1" :uid "UP:Q15047" :name "SETB1_HUMAN")
   (:var mv19203 :isa protein :raw-text "ADAM17" :uid "UP:P78536" :name "ADA17_HUMAN"))
  ("How does KRAS affect MAPK3?"
   (:var mv19211 :isa affect :manner mv19208 :agent mv19210 :object mv19207 :present "PRESENT"
    :raw-text "affect")
   (:var mv19208 :isa how)
   (:var mv19210 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv19207 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does  ITGAV affect ILK?"
   (:var mv19215 :isa affect :manner mv19212 :agent mv19214 :object mv19216 :present "PRESENT"
    :raw-text "affect")
   (:var mv19212 :isa how)
   (:var mv19214 :isa protein :raw-text "ITGAV" :uid "UP:P06756" :name "ITAV_HUMAN")
   (:var mv19216 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("What genes does MAPK1 phosphorylate?"
   (:var mv19223 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes"))
  ("What pathways affect BRAF?"
   (:var mv19227 :isa affect :agent mv19229 :object mv19228 :present "PRESENT" :raw-text "affect")
   (:var mv19229 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv19228 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes activate ILK?"
   (:var mv19233 :isa bio-activate :agent mv19235 :object mv19234 :present "PRESENT" :raw-text
    "activate")
   (:var mv19235 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19234 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("Let's learn about AKT1 in ovarian cancer."
   (:var mv19244 :isa explicit-suggestion :suggestion mv19239 :marker let-as-directive)
   (:var mv19239 :isa learning :context mv19238 :statement mv19237 :present "PRESENT")
   (:var mv19238 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv19237 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What is its relationship with BRAF?"
   (:var mv19246 :isa be :subject mv19245 :predicate mv19248 :present "PRESENT")
   (:var mv19245 :isa what) (:var mv19248 :isa relationship :patient mv19250 :modifier mv19247)
   (:var mv19250 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19247 :isa pronoun/inanimate :word "its"))
  ("What is its relationship with PTPN1?"
   (:var mv19254 :isa be :subject mv19253 :predicate mv19256 :present "PRESENT")
   (:var mv19253 :isa what) (:var mv19256 :isa relationship :patient mv19252 :modifier mv19255)
   (:var mv19252 :isa protein :raw-text "PTPN1" :uid "UP:P18031" :name "PTN1_HUMAN")
   (:var mv19255 :isa pronoun/inanimate :word "its"))
  ("AKT1 phosphorylates IFT140."
   (:var mv19261 :isa phosphorylate :agent mv19259 :substrate mv19260 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv19259 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19260 :isa protein :raw-text "IFT140" :uid "UP:Q96RY7" :name "IF140_HUMAN"))
  ("What is the next correlation of AKT1?" (:var mv19263 :isa what))
  ("Let's stop learning about AKT1." (:var mv19271 :isa let-as-directive))
  ("What is the drug response on cells with TP53 alterations?"
   (:var mv19280 :isa be :subject mv19279 :predicate mv19283 :present "PRESENT")
   (:var mv19279 :isa what)
   (:var mv19283 :isa response :beneficiary mv19292 :has-determiner "THE" :modifier mv19282
    :raw-text "response")
   (:var mv19292 :isa cell-type :plural t :mutation mv19290)
   (:var mv19290 :isa alter :plural t :|agent-OR-object| mv19278 :raw-text "alterations")
   (:var mv19278 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19282 :isa drug :raw-text "drug"))
  ("What is the drug response for cells with TP53 alterations?"
   (:var mv19296 :isa be :subject mv19295 :predicate mv19299 :present "PRESENT")
   (:var mv19295 :isa what)
   (:var mv19299 :isa response :cell-type mv19308 :has-determiner "THE" :modifier mv19298 :raw-text
    "response")
   (:var mv19308 :isa cell-type :plural t :mutation mv19306)
   (:var mv19306 :isa alter :plural t :|agent-OR-object| mv19294 :raw-text "alterations")
   (:var mv19294 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19298 :isa drug :raw-text "drug"))
  ("What is the mutation frequency of EGFR in glioblastoma?"
   (:var mv19311 :isa be :subject mv19310 :predicate mv19314 :present "PRESENT")
   (:var mv19310 :isa what)
   (:var mv19314 :isa frequency :context mv19318 :measured-item mv19316 :has-determiner "THE"
    :measured-item mv19313 :raw-text "frequency")
   (:var mv19318 :isa glioblastoma)
   (:var mv19316 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv19313 :isa mutation :raw-text "mutation"))
  ("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv19324 :isa be :subject mv19323 :predicate mv19327 :present "PRESENT")
   (:var mv19323 :isa what)
   (:var mv19327 :isa frequency :context mv19322 :measured-item mv19321 :has-determiner "THE"
    :measured-item mv19326 :raw-text "frequency")
   (:var mv19322 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv19321 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19326 :isa mutation :raw-text "mutation"))
  ("Show me the mutations of PTEN and BRAF in ovarian cancer."
   (:var mv19333 :isa show :|statement-OR-theme| mv19348 :beneficiary mv19334 :present "PRESENT")
   (:var mv19348 :isa mutation :plural t :context mv19332 :object mv19343 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv19332 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv19343 :isa collection :raw-text "PTEN and BRAF" :type protein :number 2 :items
    (mv19339 mv19341))
   (:var mv19339 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv19341 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19334 :isa interlocutor :name "speaker"))
  ("Show me the mutations of PTEN in ovarian cancer."
   (:var mv19350 :isa show :|statement-OR-theme| mv19362 :beneficiary mv19351 :present "PRESENT")
   (:var mv19362 :isa mutation :plural t :context mv19349 :object mv19356 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv19349 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv19356 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv19351 :isa interlocutor :name "speaker"))
  ("What are the mutations of PTEN in ovarian cancer?"
   (:var mv19365 :isa be :subject mv19364 :predicate mv19376 :present "PRESENT")
   (:var mv19364 :isa what)
   (:var mv19376 :isa mutation :plural t :context mv19363 :object mv19370 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv19363 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv19370 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))
  ("What is the most likely cellular location of AKT1 and BRAF?"
   (:var mv19379 :isa be :subject mv19378 :predicate mv19391 :present "PRESENT")
   (:var mv19378 :isa what) (:var mv19391 :isa quality-predicate :item mv19389 :attribute mv19385)
   (:var mv19389 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv19377 mv19388))
   (:var mv19377 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19388 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19385 :isa location-of :has-determiner "THE" :predication mv19383 :modifier mv19384)
   (:var mv19383 :isa likely :comparative mv19381)
   (:var mv19381 :isa superlative-quantifier :name "most")
   (:var mv19384 :isa cellular :name "cellular"))
  ("Are there common upstreams of AKT1 and BRAF?"
   (:var mv19407 :isa polar-question :statement mv19402)
   (:var mv19402 :isa there-exists :value mv19406 :predicate mv19394)
   (:var mv19406 :isa upstream-segment :plural t :pathwaycomponent mv19403 :predication mv19396
    :raw-text "upstreams")
   (:var mv19403 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv19392 mv19401))
   (:var mv19392 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19401 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19396 :isa common) (:var mv19394 :isa syntactic-there))
  ("What are the common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv19411 :isa be :subject mv19410 :predicate mv19423 :present "PRESENT")
   (:var mv19410 :isa what)
   (:var mv19423 :isa upstream-segment :plural t :pathwaycomponent mv19419 :has-determiner "THE"
    :predication mv19413 :raw-text "upstreams")
   (:var mv19419 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv19408 mv19417 mv19409))
   (:var mv19408 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19417 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19409 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv19413 :isa common))
  ("What genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv19436 :isa copular-predication :item mv19433 :value mv19424 :predicate mv19430)
   (:var mv19433 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19424 :isa mutual-exclusivity :disease mv19426 :alternative mv19425)
   (:var mv19426 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv19425 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv19430 :isa be :present "PRESENT"))
  ("What are the mutually exclusive genes with TP53 for breast cancer?"
   (:var mv19441 :isa be :subject mv19440 :predicate mv19451 :present "PRESENT")
   (:var mv19440 :isa what)
   (:var mv19451 :isa gene :disease mv19439 :has-determiner "THE" :predication mv19437 :raw-text
    "genes")
   (:var mv19439 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv19437 :isa mutual-exclusivity :alternative mv19438)
   (:var mv19438 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What is the mutation significance of TP53 for lung cancer?"
   (:var mv19455 :isa be :subject mv19454 :predicate mv19458 :present "PRESENT")
   (:var mv19454 :isa what)
   (:var mv19458 :isa significance :context mv19453 :agent mv19452 :has-determiner "THE" :modifier
    mv19457)
   (:var mv19453 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv19452 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19457 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv19466 :isa be :subject mv19465 :predicate mv19469 :present "PRESENT")
   (:var mv19465 :isa what)
   (:var mv19469 :isa significance :context mv19464 :agent mv19463 :has-determiner "THE" :modifier
    mv19468)
   (:var mv19464 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv19463 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19468 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
   (:var mv19475 :isa be :subject mv19474 :predicate mv19478 :present "PRESENT")
   (:var mv19474 :isa what)
   (:var mv19478 :isa significance :context mv19483 :agent mv19480 :has-determiner "THE" :modifier
    mv19477)
   (:var mv19483 :isa cancer :organ mv19482 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv19482 :isa pancreas)
   (:var mv19480 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv19477 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
   (:var mv19487 :isa be :subject mv19486 :predicate mv19490 :present "PRESENT")
   (:var mv19486 :isa what)
   (:var mv19490 :isa significance :context mv19495 :agent mv19492 :has-determiner "THE" :modifier
    mv19489)
   (:var mv19495 :isa cancer :modifier mv19494 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv19494 :isa protein :raw-text "prostatic" :uid "UP:P20151" :name "KLK2_HUMAN")
   (:var mv19492 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19489 :isa mutation :raw-text "mutation"))
  ("MEK phosphorylates ERK."
   (:var mv19499 :isa phosphorylate :agent mv19498 :substrate mv19500 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv19498 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv19500 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("EGF binds EGFR."
   (:var mv19502 :isa binding :binder mv19501 :direct-bindee mv19503 :present "PRESENT" :raw-text
    "binds")
   (:var mv19501 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv19503 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("EGFR bound to EGF binds GRB2."
   (:var mv19509 :isa binding :binder mv19505 :direct-bindee mv19504 :present "PRESENT" :raw-text
    "binds")
   (:var mv19505 :isa protein :predication mv19506 :raw-text "EGFR" :uid "UP:P00533" :name
    "EGFR_HUMAN")
   (:var mv19506 :isa binding :direct-bindee mv19505 :bindee mv19508 :past "PAST" :raw-text
    "bound")
   (:var mv19508 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv19504 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("Phosphorylated ERK is active."
   (:var mv19515 :isa copular-predication :item mv19512 :value mv19514 :predicate mv19513)
   (:var mv19512 :isa protein-family :predication mv19511 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv19511 :isa phosphorylate :substrate mv19512 :raw-text "Phosphorylated")
   (:var mv19514 :isa active) (:var mv19513 :isa be :present "PRESENT"))
  ("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
   (:var mv19516 :isa protein :predication mv19518 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv19518 :isa phosphorylate :substrate mv19516 :target mv19517 :past "PAST" :raw-text
    "phosphorylated")
   (:var mv19517 :isa protein :site mv19523 :modifier mv19524 :raw-text "MAPK1" :uid "UP:P28482"
    :name "MK01_HUMAN")
   (:var mv19523 :isa residue-on-protein :raw-text "S220" :position mv19522 :amino-acid mv19521)
   (:var mv19522 :isa number :value 220) (:var mv19521 :isa amino-acid :name "serine" :letter "S")
   (:var mv19524 :isa bio-entity :name "phosphoryates"))
  ("Active TP53 transcribes MDM2."
   (:var mv19529 :isa transcribe :agent mv19526 :object mv19527 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv19526 :isa protein :predication mv19528 :raw-text "TP53" :uid "UP:P04637" :name
    "P53_HUMAN")
   (:var mv19528 :isa active)
   (:var mv19527 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
   (:var mv19558 :isa polar-question :statement mv19557)
   (:var mv19557 :isa event-relation :subordinated-event mv19553 :event mv19555)
   (:var mv19553 :isa wh-question :statement mv19541 :wh if)
   (:var mv19541 :isa increase :|agent-OR-cause| mv19539 :|multiplier-OR-cause| mv19550
    :|affected-process-OR-object| mv19543 :present "PRESENT" :raw-text "increase")
   (:var mv19539 :isa interlocutor :name "person-and-machine")
   (:var mv19550 :isa measurement :number mv19547) (:var mv19547 :isa number :value 10)
   (:var mv19543 :isa bio-amount :measured-item mv19530 :has-determiner "THE" :raw-text "amount")
   (:var mv19530 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv19555 :isa copular-predication :item mv19533 :value mv19537 :predicate mv19531)
   (:var mv19533 :isa bio-amount :measured-item mv19535 :has-determiner "THE" :raw-text "amount")
   (:var mv19535 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv19537 :isa high :adverb mv19536) (:var mv19536 :isa ever :name "ever")
   (:var mv19531 :isa be))
  ("Does Vemurafenib decrease phosphorylated ERK in the model?"
   (:var mv19570 :isa polar-question :statement mv19568)
   (:var mv19568 :isa decrease :agent mv19560 :object mv19564 :raw-text "decrease")
   (:var mv19560 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv19564 :isa protein-family :predication mv19563 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv19563 :isa phosphorylate :substrate mv19564 :raw-text "phosphorylated"))
  ("Does Selumetinib decrease JUN in the model?"
   (:var mv19581 :isa polar-question :statement mv19579)
   (:var mv19579 :isa decrease :agent mv19572 :object mv19575 :raw-text "decrease")
   (:var mv19572 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv19575 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))
  ("How does KRAS regulate MAP2K1?"
   (:var mv19586 :isa regulate :manner mv19583 :agent mv19585 :object mv19582 :present "PRESENT"
    :raw-text "regulate")
   (:var mv19583 :isa how)
   (:var mv19585 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv19582 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("How does HRAS activate MAPK3?"
   (:var mv19591 :isa bio-activate :manner mv19588 :agent mv19590 :object mv19587 :present
    "PRESENT" :raw-text "activate")
   (:var mv19588 :isa how)
   (:var mv19590 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv19587 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Does Vemurafenib inhibit BRAF?" (:var mv19597 :isa polar-question :statement mv19596)
   (:var mv19596 :isa inhibit :agent mv19593 :object mv19595 :raw-text "inhibit")
   (:var mv19593 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv19595 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What transcription factors are shared by SRF, HRAS, and ELK1?"
   (:var mv19610 :isa share :object mv19609 :participant mv19608 :present "PRESENT" :raw-text
    "shared")
   (:var mv19609 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv19608 :isa collection :raw-text "SRF, HRAS, and ELK1" :type protein :number 3 :items
    (mv19605 mv19606 mv19600))
   (:var mv19605 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19606 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv19600 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Create a model where LCK phosphorylates CD3E"
   (:var mv19613 :isa create :present "PRESENT" :raw-text "Create"))
  ("What is upstream of CD3E?"
   (:var mv19622 :isa be :subject mv19621 :predicate mv19623 :present "PRESENT")
   (:var mv19621 :isa what)
   (:var mv19623 :isa upstream-segment :pathwaycomponent mv19620 :raw-text "upstream")
   (:var mv19620 :isa protein :raw-text "CD3E" :uid "UP:P07766" :name "CD3E_HUMAN"))
  ("I want to find a treatment for pancreatic cancer."
   (:var mv19631 :isa want :agent mv19628 :theme mv19639 :present "PRESENT")
   (:var mv19628 :isa interlocutor :name "speaker")
   (:var mv19639 :isa bio-find :agent mv19628 :object mv19636 :present "PRESENT" :raw-text "find")
   (:var mv19636 :isa treatment :disease mv19627 :has-determiner "A" :raw-text "treatment")
   (:var mv19627 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug could I use?"
   (:var mv19648 :isa bio-use :object mv19641 :modal mv19642 :agent mv19643 :present "PRESENT"
    :raw-text "use")
   (:var mv19641 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv19642 :isa could)
   (:var mv19643 :isa interlocutor :name "speaker"))
  ("Are there any drugs for BRAF?" (:var mv19661 :isa polar-question :statement mv19657)
   (:var mv19657 :isa there-exists :value mv19660 :predicate mv19650)
   (:var mv19660 :isa drug :plural t :target mv19656 :quantifier mv19652 :raw-text "drugs")
   (:var mv19656 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19652 :isa any :word "any") (:var mv19650 :isa syntactic-there))
  ("Are they kinases?" (:var mv19666 :isa polar-question :statement mv19662)
   (:var mv19662 :isa be :subject mv19663 :predicate mv19665)
   (:var mv19663 :isa pronoun/plural :word "they")
   (:var mv19665 :isa kinase :plural t :raw-text "kinases"))
  ("Can you find a drug for BRAF?" (:var mv19676 :isa polar-question :statement mv19670)
   (:var mv19670 :isa bio-find :agent mv19668 :object mv19672 :modal "CAN" :raw-text "find")
   (:var mv19668 :isa interlocutor :name "hearer")
   (:var mv19672 :isa drug :target mv19674 :has-determiner "A" :raw-text "drug")
   (:var mv19674 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Can you tell me all the transcription factors that are shared by elk1 and srf?"
   (:var mv19698 :isa polar-question :statement mv19682)
   (:var mv19682 :isa tell :agent mv19681 :theme mv19697 :beneficiary mv19683 :modal "CAN")
   (:var mv19681 :isa interlocutor :name "hearer")
   (:var mv19697 :isa transcription-factor :plural t :predication mv19695 :quantifier mv19684
    :has-determiner "THE" :raw-text "transcription factors")
   (:var mv19695 :isa share :object mv19697 :that-rel t :participant mv19692 :modal "CAN" :raw-text
    "shared")
   (:var mv19692 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv19679 mv19691))
   (:var mv19679 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv19691 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19684 :isa all :word "all") (:var mv19683 :isa interlocutor :name "speaker"))
  ("Can you tell me what transcription factors are shared by elk1 and srf?"
   (:var mv19716 :isa polar-question :statement mv19704)
   (:var mv19704 :isa tell :agent mv19703 :theme mv19714 :theme mv19705 :modal "CAN")
   (:var mv19703 :isa interlocutor :name "hearer")
   (:var mv19714 :isa share :object mv19713 :participant mv19712 :modal "CAN" :raw-text "shared")
   (:var mv19713 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv19712 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv19701 mv19711))
   (:var mv19701 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv19711 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19705 :isa interlocutor :name "speaker"))
  ("Do you know any drugs for BRAF?" (:var mv19730 :isa polar-question :statement mv19729)
   (:var mv19729 :isa know :agent mv19718 :statement mv19728)
   (:var mv19718 :isa interlocutor :name "hearer")
   (:var mv19728 :isa drug :plural t :target mv19724 :quantifier mv19720 :raw-text "drugs")
   (:var mv19724 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19720 :isa any :word "any"))
  ("Does STAT3 regulate the JUN gene in the lung?"
   (:var mv19742 :isa polar-question :statement mv19740)
   (:var mv19740 :isa regulate :agent mv19731 :object mv19736 :raw-text "regulate")
   (:var mv19731 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19736 :isa gene :organ mv19739 :has-determiner "THE" :expresses mv19735 :raw-text
    "gene")
   (:var mv19739 :isa lung :has-determiner "THE")
   (:var mv19735 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))
  ("Does STAT3 regulate the c-fos gene in liver?"
   (:var mv19753 :isa polar-question :statement mv19751)
   (:var mv19751 :isa regulate :agent mv19743 :object mv19748 :raw-text "regulate")
   (:var mv19743 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19748 :isa gene :organ mv19750 :has-determiner "THE" :expresses mv19744 :raw-text
    "gene")
   (:var mv19750 :isa liver)
   (:var mv19744 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the c-fos gene?" (:var mv19761 :isa polar-question :statement mv19760)
   (:var mv19760 :isa regulate :agent mv19754 :object mv19759 :raw-text "regulate")
   (:var mv19754 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19759 :isa gene :has-determiner "THE" :expresses mv19755 :raw-text "gene")
   (:var mv19755 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the cfos gene in the lung?"
   (:var mv19773 :isa polar-question :statement mv19771)
   (:var mv19771 :isa regulate :agent mv19762 :object mv19767 :raw-text "regulate")
   (:var mv19762 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19767 :isa gene :organ mv19770 :has-determiner "THE" :expresses mv19766 :raw-text
    "gene")
   (:var mv19770 :isa lung :has-determiner "THE")
   (:var mv19766 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does TP53 target MDM2?" (:var mv19780 :isa polar-question :statement mv19779)
   (:var mv19779 :isa target :agent mv19774 :object mv19775 :raw-text "target")
   (:var mv19774 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19775 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Does miR-2000-5p target stat3" (:var mv19787 :isa polar-question :statement mv19786)
   (:var mv19786 :isa target :agent mv19781 :object mv19782 :raw-text "target")
   (:var mv19781 :isa micro-rna :raw-text "miR-2000-5p" :name "microRNA 2000-5p" :uid
    "MIMAmiR-2000-5p")
   (:var mv19782 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-20b-5p target STAT3?" (:var mv19794 :isa polar-question :statement mv19793)
   (:var mv19793 :isa target :agent mv19788 :object mv19789 :raw-text "target")
   (:var mv19788 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv19789 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-222-3p target STAT3?" (:var mv19801 :isa polar-question :statement mv19800)
   (:var mv19800 :isa target :agent mv19795 :object mv19796 :raw-text "target")
   (:var mv19795 :isa micro-rna :raw-text "miR-222-3p" :name "microRNA 222-3p" :uid "MIMAT0000279")
   (:var mv19796 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does stat3 regulate cfors in liver" (:var mv19810 :isa polar-question :statement mv19808)
   (:var mv19808 :isa regulate :agent mv19802 :object mv19807 :raw-text "regulate")
   (:var mv19802 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19807 :isa bio-entity :organ mv19806 :name "cfors") (:var mv19806 :isa liver))
  ("Does stat3 regulate cfos in liver" (:var mv19819 :isa polar-question :statement mv19817)
   (:var mv19817 :isa regulate :agent mv19811 :object mv19814 :raw-text "regulate")
   (:var mv19811 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19814 :isa protein :organ mv19816 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv19816 :isa liver))
  ("Does it regulate cfos in brain" (:var mv19828 :isa polar-question :statement mv19826)
   (:var mv19826 :isa regulate :|agent-OR-cause| mv19821 :object mv19823 :raw-text "regulate")
   (:var mv19821 :isa pronoun/inanimate :word "it")
   (:var mv19823 :isa protein :organ mv19825 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv19825 :isa brain))
  ("Does stat3 regulate cfos?" (:var mv19834 :isa polar-question :statement mv19833)
   (:var mv19833 :isa regulate :agent mv19829 :object mv19832 :raw-text "regulate")
   (:var mv19829 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19832 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 regulate the cfos gene in blood cells"
   (:var mv19848 :isa polar-question :statement mv19845)
   (:var mv19845 :isa regulate :agent mv19835 :object mv19840 :raw-text "regulate")
   (:var mv19835 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19840 :isa gene :cell-type mv19846 :has-determiner "THE" :expresses mv19839 :raw-text
    "gene")
   (:var mv19846 :isa cell-type :plural t :non-cellular-location mv19842)
   (:var mv19842 :isa bio-organ :name "blood" :uid "BTO:0000089")
   (:var mv19839 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the il-12 pathway utilize SGK1?" (:var mv19856 :isa polar-question :statement mv19855)
   (:var mv19855 :isa utilize :participant mv19853 :object mv19850 :raw-text "utilize")
   (:var mv19853 :isa pathway :has-determiner "THE" :modifier mv19849 :raw-text "pathway")
   (:var mv19849 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv19850 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Does the mTor pathway utilize SGK1?" (:var mv19866 :isa polar-question :statement mv19865)
   (:var mv19865 :isa utilize :participant mv19863 :object mv19857 :raw-text "utilize")
   (:var mv19863 :isa pathway :has-determiner "THE" :modifier mv19860 :raw-text "pathway")
   (:var mv19860 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv19857 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Give me the evidence that kras decreases frizzled8."
   (:var mv19868 :isa give :theme mv19875 :beneficiary mv19869 :present "PRESENT")
   (:var mv19875 :isa evidence :statement mv19874 :has-determiner "THE")
   (:var mv19874 :isa decrease :agent mv19873 :object mv19867 :present "PRESENT" :raw-text
    "decreases")
   (:var mv19873 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv19867 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv19869 :isa interlocutor :name "speaker"))
  ("Give me the evidence that kras regulates frizzled8."
   (:var mv19877 :isa give :theme mv19884 :beneficiary mv19878 :present "PRESENT")
   (:var mv19884 :isa evidence :statement mv19883 :has-determiner "THE")
   (:var mv19883 :isa regulate :agent mv19882 :object mv19876 :present "PRESENT" :raw-text
    "regulates")
   (:var mv19882 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv19876 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv19878 :isa interlocutor :name "speaker"))
  ("Is MEK a kinase?" (:var mv19889 :isa polar-question :statement mv19885)
   (:var mv19885 :isa be :subject mv19886 :predicate mv19888)
   (:var mv19886 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv19888 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is MEK2 inhibited by Selumetinib?" (:var mv19896 :isa polar-question :statement mv19892)
   (:var mv19892 :isa inhibit :object mv19890 :agent mv19894 :past "PAST" :raw-text "inhibited")
   (:var mv19890 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN")
   (:var mv19894 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Is STAT3 a transcription factor for c-fos gene?"
   (:var mv19905 :isa polar-question :statement mv19900)
   (:var mv19900 :isa be :subject mv19897 :predicate mv19898)
   (:var mv19897 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19898 :isa transcription-factor :controlled-gene mv19903 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv19903 :isa gene :expresses mv19899 :raw-text "gene")
   (:var mv19899 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 one of the regulators of the c-fos gene?"
   (:var mv19924 :isa polar-question :statement mv19908)
   (:var mv19908 :isa be :subject mv19906 :predicate mv19923)
   (:var mv19906 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19923 :isa regulator :plural t :quantifier mv19911 :theme mv19918 :has-determiner "THE"
    :raw-text "regulators")
   (:var mv19911 :isa number :value 1)
   (:var mv19918 :isa gene :has-determiner "THE" :expresses mv19907 :raw-text "gene")
   (:var mv19907 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Selumetinib an inhibitor of MEK1?" (:var mv19932 :isa polar-question :statement mv19926)
   (:var mv19926 :isa be :subject mv19927 :predicate mv19929)
   (:var mv19927 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv19929 :isa inhibitor :protein mv19925 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv19925 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is Vemurafenib an inhibitor for BRAF?" (:var mv19940 :isa polar-question :statement mv19933)
   (:var mv19933 :isa be :subject mv19934 :predicate mv19936)
   (:var mv19934 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv19936 :isa inhibitor :|target-OR-protein| mv19938 :has-determiner "AN" :raw-text
    "inhibitor")
   (:var mv19938 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is fakeprotein a kinase" (:var mv19945 :isa polar-question :statement mv19941)
   (:var mv19941 :isa be :subject mv19944 :predicate mv19943)
   (:var mv19944 :isa bio-entity :name "fakeprotein")
   (:var mv19943 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is hmga2 a kinase" (:var mv19950 :isa polar-question :statement mv19947)
   (:var mv19947 :isa be :subject mv19946 :predicate mv19949)
   (:var mv19946 :isa protein :raw-text "hmga2" :uid "UP:P52926" :name "HMGA2_HUMAN")
   (:var mv19949 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is stat3 an apoptotic regulator?" (:var mv19957 :isa polar-question :statement mv19952)
   (:var mv19952 :isa be :subject mv19951 :predicate mv19956)
   (:var mv19951 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19956 :isa regulator :has-determiner "AN" :cellular-process mv19954 :raw-text
    "regulator")
   (:var mv19954 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in any apoptotic pathways?"
   (:var mv19970 :isa polar-question :statement mv19960)
   (:var mv19960 :isa involve :object mv19958 :|context-OR-theme| mv19968 :past "PAST")
   (:var mv19958 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19968 :isa pathway :plural t :quantifier mv19962 :cellular-process mv19963 :raw-text
    "pathways")
   (:var mv19962 :isa any :word "any") (:var mv19963 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in apoptotic regulation?"
   (:var mv19979 :isa polar-question :statement mv19973)
   (:var mv19973 :isa involve :object mv19971 :theme mv19977 :past "PAST")
   (:var mv19971 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19977 :isa regulate :cellular-process mv19975 :raw-text "regulation")
   (:var mv19975 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in regulating apoptosis?"
   (:var mv19987 :isa polar-question :statement mv19982)
   (:var mv19982 :isa involve :object mv19980 :theme mv19984 :past "PAST")
   (:var mv19980 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19984 :isa regulate :affected-process mv19985 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv19985 :isa apoptosis :raw-text "apoptosis"))
  ("What proteins does MEK phosphorylate?"
   (:var mv19993 :isa phosphorylate :substrate mv19994 :agent mv19992 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv19994 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv19992 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Is the first one a kinase" (:var mv20004 :isa polar-question :statement mv19995)
   (:var mv19995 :isa be :subject mv20003 :predicate mv20002)
   (:var mv20003 :isa indefinite-pronoun :has-determiner "THE" :ordinal mv20000 :word "one")
   (:var mv20000 :isa number :value 1)
   (:var mv20002 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is there a drug that targets BRAF?" (:var mv20016 :isa polar-question :statement mv20015)
   (:var mv20015 :isa there-exists :value mv20009 :predicate mv20006)
   (:var mv20009 :isa drug :predication mv20013 :has-determiner "A" :raw-text "drug")
   (:var mv20013 :isa target :agent mv20009 :that-rel t :object mv20014 :present "PRESENT"
    :raw-text "targets")
   (:var mv20014 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv20006 :isa syntactic-there))
  ("Is there an apoptotic pathway regulated by stat3?"
   (:var mv20029 :isa polar-question :statement mv20027)
   (:var mv20027 :isa there-exists :value mv20024 :predicate mv20019)
   (:var mv20024 :isa pathway :predication mv20025 :has-determiner "AN" :cellular-process mv20022
    :raw-text "pathway")
   (:var mv20025 :isa regulate :affected-process mv20024 :agent mv20017 :past "PAST" :raw-text
    "regulated")
   (:var mv20017 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20022 :isa apoptosis :raw-text "apoptotic") (:var mv20019 :isa syntactic-there))
  ("Is there an apoptotic pathway that is regulated by stat3?"
   (:var mv20045 :isa polar-question :statement mv20042)
   (:var mv20042 :isa there-exists :value mv20037 :predicate mv20032)
   (:var mv20037 :isa pathway :predication mv20043 :has-determiner "AN" :cellular-process mv20035
    :raw-text "pathway")
   (:var mv20043 :isa regulate :affected-process mv20037 :that-rel t :agent mv20030 :present
    "PRESENT" :raw-text "regulated")
   (:var mv20030 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20035 :isa apoptosis :raw-text "apoptotic") (:var mv20032 :isa syntactic-there))
  ("Let me know if there are any apoptotic genes stat3 regulates"
   (:var mv20047 :isa let :complement mv20065 :present "PRESENT")
   (:var mv20065 :isa know :agent mv20048 :statement mv20064 :present "PRESENT")
   (:var mv20048 :isa interlocutor :name "speaker")
   (:var mv20064 :isa wh-question :statement mv20060 :wh if)
   (:var mv20060 :isa there-exists :value mv20063 :predicate mv20053)
   (:var mv20063 :isa gene :plural t :predication mv20059 :quantifier mv20054 :cellular-process
    mv20055 :raw-text "genes")
   (:var mv20059 :isa regulate :object mv20063 :agent mv20046 :present "PRESENT" :raw-text
    "regulates")
   (:var mv20046 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20054 :isa any :word "any") (:var mv20055 :isa apoptosis :raw-text "apoptotic")
   (:var mv20053 :isa be))
  ("Let me know which genes stat3 regulates"
   (:var mv20067 :isa let :complement mv20076 :present "PRESENT")
   (:var mv20076 :isa know :agent mv20068 :statement mv20075 :present "PRESENT")
   (:var mv20068 :isa interlocutor :name "speaker")
   (:var mv20075 :isa gene :plural t :predication mv20073 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv20073 :isa regulate :object mv20075 :agent mv20066 :present "PRESENT" :raw-text
    "regulates")
   (:var mv20066 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List all the genes regulated by elk1 and srf?"
   (:var mv20078 :isa list :theme mv20089 :present "PRESENT")
   (:var mv20089 :isa gene :plural t :predication mv20083 :quantifier mv20079 :has-determiner "THE"
    :raw-text "genes")
   (:var mv20083 :isa regulate :object mv20089 :agent mv20087 :past "PAST" :raw-text "regulated")
   (:var mv20087 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20077 mv20086))
   (:var mv20077 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20086 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20079 :isa all :word "all"))
  ("List genes regulated by elk1 and srf"
   (:var mv20093 :isa list :theme mv20095 :present "PRESENT")
   (:var mv20095 :isa gene :plural t :predication mv20096 :raw-text "genes")
   (:var mv20096 :isa regulate :object mv20095 :agent mv20100 :past "PAST" :raw-text "regulated")
   (:var mv20100 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20092 mv20099))
   (:var mv20092 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20099 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("List some genes that are regulated by elk1 and srf"
   (:var mv20104 :isa list :theme mv20118 :present "PRESENT")
   (:var mv20118 :isa gene :plural t :predication mv20116 :quantifier mv20105 :raw-text "genes")
   (:var mv20116 :isa regulate :object mv20118 :that-rel t :agent mv20114 :present "PRESENT"
    :raw-text "regulated")
   (:var mv20114 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20103 mv20113))
   (:var mv20103 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20113 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20105 :isa some :word "some"))
  ("List the evidence that kras decreases frizzled8."
   (:var mv20120 :isa list :theme mv20126 :present "PRESENT")
   (:var mv20126 :isa evidence :statement mv20125 :has-determiner "THE")
   (:var mv20125 :isa decrease :agent mv20124 :object mv20119 :present "PRESENT" :raw-text
    "decreases")
   (:var mv20124 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv20119 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Name genes regulated by elk1 and srf"
   (:var mv20128 :isa name-something :patient mv20132 :present "PRESENT")
   (:var mv20132 :isa gene :plural t :predication mv20133 :raw-text "genes")
   (:var mv20133 :isa regulate :object mv20132 :agent mv20137 :past "PAST" :raw-text "regulated")
   (:var mv20137 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20127 mv20136))
   (:var mv20127 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20136 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Of the apoptotic genes regulated by stat3, which are active in the liver?"
   (:var mv20158 :isa copular-predication :item mv20161 :value mv20151 :predicate mv20150)
   (:var mv20161 :isa gene :plural t :has-determiner "WHICH" :predication mv20147 :has-determiner
    "THE" :cellular-process mv20143 :raw-text "genes")
   (:var mv20147 :isa regulate :object mv20161 :agent mv20140 :past "PAST" :raw-text "regulated")
   (:var mv20140 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20143 :isa apoptosis :raw-text "apoptotic") (:var mv20151 :isa active :organ mv20154)
   (:var mv20154 :isa liver :has-determiner "THE") (:var mv20150 :isa be :present "PRESENT"))
  ("Of the apoptotic genes stat3 regulates, which are active in the liver?"
   (:var mv20180 :isa copular-predication :item mv20182 :value mv20173 :predicate mv20172)
   (:var mv20182 :isa gene :plural t :has-determiner "WHICH" :predication mv20170 :has-determiner
    "THE" :cellular-process mv20166 :raw-text "genes")
   (:var mv20170 :isa regulate :object mv20182 :agent mv20163 :present "PRESENT" :raw-text
    "regulates")
   (:var mv20163 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20166 :isa apoptosis :raw-text "apoptotic") (:var mv20173 :isa active :organ mv20176)
   (:var mv20176 :isa liver :has-determiner "THE") (:var mv20172 :isa be :present "PRESENT"))
  ("Of the genes stat3 regulates in the liver, which are apoptotic?"
   (:var mv20198 :isa copular-predication :item mv20201 :value mv20195 :predicate mv20194)
   (:var mv20201 :isa gene :plural t :has-determiner "WHICH" :predication mv20189 :has-determiner
    "THE" :raw-text "genes")
   (:var mv20189 :isa regulate :object mv20201 :agent mv20184 :organ mv20192 :present "PRESENT"
    :raw-text "regulates")
   (:var mv20184 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20192 :isa liver :has-determiner "THE")
   (:var mv20195 :isa apoptosis :raw-text "apoptotic") (:var mv20194 :isa be :present "PRESENT"))
  ("Of the hepatic genes stat3 regulates, which are apoptotic?"
   (:var mv20216 :isa copular-predication :item mv20218 :value mv20212 :predicate mv20211)
   (:var mv20218 :isa gene :plural t :has-determiner "WHICH" :predication mv20209 :has-determiner
    "THE" :non-cellular-location mv20206 :raw-text "genes")
   (:var mv20209 :isa regulate :object mv20218 :agent mv20203 :present "PRESENT" :raw-text
    "regulates")
   (:var mv20203 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20206 :isa liver) (:var mv20212 :isa apoptosis :raw-text "apoptotic")
   (:var mv20211 :isa be :present "PRESENT"))
  ("Of the liver genes stat3 regulates, which are apoptotic?"
   (:var mv20233 :isa copular-predication :item mv20235 :value mv20229 :predicate mv20228)
   (:var mv20235 :isa gene :plural t :has-determiner "WHICH" :predication mv20226 :has-determiner
    "THE" :non-cellular-location mv20223 :raw-text "genes")
   (:var mv20226 :isa regulate :object mv20235 :agent mv20220 :present "PRESENT" :raw-text
    "regulates")
   (:var mv20220 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20223 :isa liver) (:var mv20229 :isa apoptosis :raw-text "apoptotic")
   (:var mv20228 :isa be :present "PRESENT"))
  ("Please find pathways involving SRF"
   (:var mv20239 :isa bio-find :object mv20241 :present "PRESENT" :adverb mv20237 :raw-text "find")
   (:var mv20241 :isa pathway :plural t :predication mv20242 :raw-text "pathways")
   (:var mv20242 :isa involve :theme mv20241 :object mv20243 :progressive "PROGRESSIVE")
   (:var mv20243 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20237 :isa please :name "please"))
  ("Please show me KEGG pathways involving SRF"
   (:var mv20246 :isa show :|statement-OR-theme| mv20254 :beneficiary mv20247 :present "PRESENT"
    :adverb mv20245)
   (:var mv20254 :isa pathway :plural t :predication mv20251 :modifier mv20248 :raw-text
    "pathways")
   (:var mv20251 :isa involve :theme mv20254 :object mv20252 :progressive "PROGRESSIVE")
   (:var mv20252 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20248 :isa database :name "KEGG" :uid "KEGG")
   (:var mv20247 :isa interlocutor :name "speaker") (:var mv20245 :isa please :name "please"))
  ("Please show me pathways involving SRF"
   (:var mv20256 :isa show :|statement-OR-theme| mv20262 :beneficiary mv20257 :present "PRESENT"
    :adverb mv20255)
   (:var mv20262 :isa pathway :plural t :predication mv20260 :raw-text "pathways")
   (:var mv20260 :isa involve :theme mv20262 :object mv20261 :progressive "PROGRESSIVE")
   (:var mv20261 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20257 :isa interlocutor :name "speaker") (:var mv20255 :isa please :name "please"))
  ("MEK activates ERK"
   (:var mv20264 :isa bio-activate :agent mv20263 :object mv20265 :present "PRESENT" :raw-text
    "activates")
   (:var mv20263 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv20265 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that MEK activates ERK"
   (:var mv20266 :isa remove :object mv20273 :present "PRESENT" :raw-text "Remove")
   (:var mv20273 :isa fact :statement mv20271 :has-determiner "THE")
   (:var mv20271 :isa bio-activate :agent mv20270 :object mv20272 :present "PRESENT" :raw-text
    "activates")
   (:var mv20270 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv20272 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Inactive MEK activates ERK"
   (:var mv20276 :isa bio-activate :agent mv20275 :object mv20277 :present "PRESENT" :raw-text
    "activates")
   (:var mv20275 :isa protein-family :predication mv20274 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv20274 :isa inactive)
   (:var mv20277 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that inactive MEK activates ERK"
   (:var mv20278 :isa remove :object mv20286 :present "PRESENT" :raw-text "Remove")
   (:var mv20286 :isa fact :statement mv20284 :has-determiner "THE")
   (:var mv20284 :isa bio-activate :agent mv20283 :object mv20285 :present "PRESENT" :raw-text
    "activates")
   (:var mv20283 :isa protein-family :predication mv20282 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv20282 :isa inactive)
   (:var mv20285 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Show immune system pathways"
   (:var mv20288 :isa show :|statement-OR-theme| mv20291 :present "PRESENT")
   (:var mv20291 :isa pathway :plural t :non-cellular-location mv20287 :raw-text "pathways")
   (:var mv20287 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Show me pathways involving SRF"
   (:var mv20292 :isa show :|statement-OR-theme| mv20298 :beneficiary mv20293 :present "PRESENT")
   (:var mv20298 :isa pathway :plural t :predication mv20296 :raw-text "pathways")
   (:var mv20296 :isa involve :theme mv20298 :object mv20297 :progressive "PROGRESSIVE")
   (:var mv20297 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20293 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF in them"
   (:var mv20299 :isa show :|statement-OR-theme| mv20309 :beneficiary mv20300 :present "PRESENT")
   (:var mv20309 :isa pathway :plural t :pathwaycomponent mv20304 :raw-text "pathways")
   (:var mv20304 :isa protein
    :|cell-line-OR-cell-type-OR-cellular-location-OR-context-OR-organ-OR-preparation-OR-organism-OR-in-equilibrium-with-OR-complex-OR-equilibrium-state-OR-state-OR-in-pathway|
    mv20306 :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20306 :isa pronoun/plural :word "them")
   (:var mv20300 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF"
   (:var mv20310 :isa show :|statement-OR-theme| mv20317 :beneficiary mv20311 :present "PRESENT")
   (:var mv20317 :isa pathway :plural t :pathwaycomponent mv20315 :raw-text "pathways")
   (:var mv20315 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20311 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases frizzled8."
   (:var mv20319 :isa show :|statement-OR-theme| mv20326 :beneficiary mv20320 :present "PRESENT")
   (:var mv20326 :isa evidence :statement mv20325 :has-determiner "THE")
   (:var mv20325 :isa decrease :agent mv20324 :object mv20318 :present "PRESENT" :raw-text
    "decreases")
   (:var mv20324 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv20318 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv20320 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases the amount of frizzled8?"
   (:var mv20328 :isa show :|statement-OR-theme| mv20339 :beneficiary mv20329 :present "PRESENT")
   (:var mv20339 :isa evidence :statement mv20334 :has-determiner "THE")
   (:var mv20334 :isa decrease :agent mv20333 :|affected-process-OR-object| mv20336 :present
    "PRESENT" :raw-text "decreases")
   (:var mv20333 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv20336 :isa bio-amount :measured-item mv20327 :has-determiner "THE" :raw-text "amount")
   (:var mv20327 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv20329 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras regulates frizzled8?"
   (:var mv20341 :isa show :|statement-OR-theme| mv20348 :beneficiary mv20342 :present "PRESENT")
   (:var mv20348 :isa evidence :statement mv20347 :has-determiner "THE")
   (:var mv20347 :isa regulate :agent mv20346 :object mv20340 :present "PRESENT" :raw-text
    "regulates")
   (:var mv20346 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv20340 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv20342 :isa interlocutor :name "speaker"))
  ("Show transcription factors shared by elk1 and srf"
   (:var mv20352 :isa show :|statement-OR-theme| mv20350 :present "PRESENT")
   (:var mv20350 :isa transcription-factor :plural t :predication mv20353 :raw-text
    "transcription factors")
   (:var mv20353 :isa share :object mv20350 :participant mv20357 :past "PAST" :raw-text "shared")
   (:var mv20357 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20351 mv20356))
   (:var mv20351 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20356 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me how stat3 regulates apoptosis"
   (:var mv20361 :isa tell :beneficiary mv20362 :present "PRESENT")
   (:var mv20362 :isa interlocutor :name "speaker"))
  ("Tell me what apoptotic pathways are regulated by stat3 in the liver"
   (:var mv20368 :isa tell :theme mv20383 :theme mv20369 :present "PRESENT")
   (:var mv20383 :isa regulate :affected-process mv20382 :agent mv20367 :present "PRESENT"
    :raw-text "regulated")
   (:var mv20382 :isa pathway :plural t :has-determiner "WHAT" :cellular-process mv20371 :raw-text
    "pathways")
   (:var mv20371 :isa apoptosis :raw-text "apoptotic")
   (:var mv20367 :isa protein :organ mv20380 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv20380 :isa liver :has-determiner "THE")
   (:var mv20369 :isa interlocutor :name "speaker"))
  ("Tell me what genes elk1 and srf regulate"
   (:var mv20387 :isa tell :theme mv20397 :beneficiary mv20388 :present "PRESENT")
   (:var mv20397 :isa gene :plural t :predication mv20394 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20394 :isa regulate :object mv20397 :agent mv20395 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20395 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20386 mv20393))
   (:var mv20386 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20393 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20388 :isa interlocutor :name "speaker"))
  ("Tell me what pathways are regulated by stat3 in the liver"
   (:var mv20399 :isa tell :theme mv20411 :theme mv20400 :present "PRESENT")
   (:var mv20411 :isa regulate :affected-process mv20410 :agent mv20398 :present "PRESENT"
    :raw-text "regulated")
   (:var mv20410 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv20398 :isa protein :organ mv20409 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv20409 :isa liver :has-determiner "THE")
   (:var mv20400 :isa interlocutor :name "speaker"))
  ("What KEGG pathways involve immune signaling?"
   (:var mv20418 :isa involve :theme mv20422 :object mv20420 :present "PRESENT")
   (:var mv20422 :isa pathway :plural t :has-determiner "WHAT" :modifier mv20415 :raw-text
    "pathways")
   (:var mv20415 :isa database :name "KEGG" :uid "KEGG")
   (:var mv20420 :isa signal :modifier mv20419 :raw-text "signaling")
   (:var mv20419 :isa immune :name "immune"))
  ("What MAP kinase phosphatases are regulated by ELK1?"
   (:var mv20433 :isa regulate :object mv20432 :agent mv20424 :present "PRESENT" :raw-text
    "regulated")
   (:var mv20432 :isa phosphatase :plural t :has-determiner "WHAT" :enzyme mv20423 :raw-text
    "phosphatases")
   (:var mv20423 :isa protein-family :raw-text "MAP kinase" :name
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
   (:var mv20424 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What apoptotic genes are downstream of stat3?"
   (:var mv20441 :isa be :subject mv20446 :predicate mv20442 :present "PRESENT")
   (:var mv20446 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv20437 :raw-text
    "genes")
   (:var mv20437 :isa apoptosis :raw-text "apoptotic")
   (:var mv20442 :isa downstream-segment :pathwaycomponent mv20435 :raw-text "downstream")
   (:var mv20435 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes does stat3 regulate in the liver?"
   (:var mv20455 :isa regulate :object mv20460 :agent mv20448 :organ mv20458 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20460 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv20450 :raw-text
    "genes")
   (:var mv20450 :isa apoptosis :raw-text "apoptotic")
   (:var mv20448 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20458 :isa liver :has-determiner "THE"))
  ("What apoptotic genes does stat3 regulate?"
   (:var mv20469 :isa regulate :object mv20471 :agent mv20462 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20471 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv20464 :raw-text
    "genes")
   (:var mv20464 :isa apoptosis :raw-text "apoptotic")
   (:var mv20462 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes is stat3 upstream of?"
   (:var mv20478 :isa be :subject mv20483 :predicate mv20479 :present "PRESENT")
   (:var mv20483 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv20474 :raw-text
    "genes")
   (:var mv20474 :isa apoptosis :raw-text "apoptotic")
   (:var mv20479 :isa upstream-segment :pathwaycomponent mv20483 :modifier mv20472 :raw-text
    "upstream")
   (:var mv20472 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic pathways involve stat3?"
   (:var mv20490 :isa involve :theme mv20492 :object mv20484 :present "PRESENT")
   (:var mv20492 :isa pathway :plural t :has-determiner "WHAT" :cellular-process mv20486 :raw-text
    "pathways")
   (:var mv20486 :isa apoptosis :raw-text "apoptotic")
   (:var mv20484 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are Selumetinib's targets?"
   (:var mv20494 :isa be :subject mv20493 :predicate mv20500 :present "PRESENT")
   (:var mv20493 :isa what)
   (:var mv20500 :isa target-protein :plural t :agent mv20496 :raw-text "targets")
   (:var mv20496 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What are some JAK1 inhibitors?"
   (:var mv20503 :isa be :subject mv20502 :predicate mv20508 :present "PRESENT")
   (:var mv20502 :isa what)
   (:var mv20508 :isa inhibitor :plural t :quantifier mv20504 :protein mv20501 :raw-text
    "inhibitors")
   (:var mv20504 :isa some :word "some")
   (:var mv20501 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What are some drugs that inhibit BRAF?"
   (:var mv20510 :isa be :subject mv20509 :predicate mv20518 :present "PRESENT")
   (:var mv20509 :isa what)
   (:var mv20518 :isa drug :plural t :predication mv20515 :quantifier mv20511 :raw-text "drugs")
   (:var mv20515 :isa inhibit :agent mv20518 :that-rel t :object mv20516 :present "PRESENT"
    :raw-text "inhibit")
   (:var mv20516 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv20511 :isa some :word "some"))
  ("What are some genes in the MAPK signaling pathway?"
   (:var mv20521 :isa be :subject mv20520 :predicate mv20530 :present "PRESENT")
   (:var mv20520 :isa what)
   (:var mv20530 :isa gene :plural t :context mv20519 :quantifier mv20522 :raw-text "genes")
   (:var mv20519 :isa signaling-pathway :has-determiner "THE" :modifier mv20527 :raw-text
    "signaling pathway")
   (:var mv20527 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv20522 :isa some :word "some"))
  ("What are some proteins in the MAPK signaling pathway?"
   (:var mv20533 :isa be :subject mv20532 :predicate mv20542 :present "PRESENT")
   (:var mv20532 :isa what)
   (:var mv20542 :isa protein :plural t :in-pathway mv20531 :quantifier mv20534 :raw-text
    "proteins")
   (:var mv20531 :isa signaling-pathway :has-determiner "THE" :modifier mv20539 :raw-text
    "signaling pathway")
   (:var mv20539 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv20534 :isa some :word "some"))
  ("What are the members of RAS?"
   (:var mv20544 :isa be :subject mv20543 :predicate mv20552 :present "PRESENT")
   (:var mv20543 :isa what) (:var mv20552 :isa member :plural t :set mv20549 :has-determiner "THE")
   (:var mv20549 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv20557 :isa be :subject mv20556 :predicate mv20568 :present "PRESENT")
   (:var mv20556 :isa what)
   (:var mv20568 :isa micro-rna :plural t :predication mv20562 :has-determiner "THE" :raw-text
    "miRNAS")
   (:var mv20562 :isa regulate :agent mv20568 :that-rel t :object mv20566 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20566 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv20563 mv20564 mv20553 mv20554 mv20555))
   (:var mv20563 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv20564 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20553 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20554 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv20555 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the regulators of MAPPK14 in bladder"
   (:var mv20570 :isa be :subject mv20569 :predicate mv20583 :present "PRESENT")
   (:var mv20569 :isa what)
   (:var mv20583 :isa regulator :plural t :theme mv20579 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20579 :isa bio-entity :organ mv20578 :name "MAPPK14")
   (:var mv20578 :isa bio-organ :name "bladder" :uid "BTO:0001418"))
  ("What are the regulators of SMURF2 in liver?"
   (:var mv20586 :isa be :subject mv20585 :predicate mv20596 :present "PRESENT")
   (:var mv20585 :isa what)
   (:var mv20596 :isa regulator :plural t :theme mv20584 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20584 :isa protein :organ mv20592 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv20592 :isa liver))
  ("What are the regulators of SMURF2?"
   (:var mv20599 :isa be :subject mv20598 :predicate mv20606 :present "PRESENT")
   (:var mv20598 :isa what)
   (:var mv20606 :isa regulator :plural t :theme mv20597 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20597 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What are the regulators of c-fos in lung?"
   (:var mv20609 :isa be :subject mv20608 :predicate mv20619 :present "PRESENT")
   (:var mv20608 :isa what)
   (:var mv20619 :isa regulator :plural t :theme mv20607 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20607 :isa protein :organ mv20615 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv20615 :isa lung))
  ("What are the regulators of mapk14 in bladeeer"
   (:var mv20622 :isa be :subject mv20621 :predicate mv20632 :present "PRESENT")
   (:var mv20621 :isa what)
   (:var mv20632 :isa regulator :plural t :theme mv20620 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20620 :isa protein :raw-text "mapk14" :uid "UP:Q16539" :name "MK14_HUMAN"))
  ("What are the regulators of mapk14"
   (:var mv20635 :isa be :subject mv20634 :predicate mv20642 :present "PRESENT")
   (:var mv20634 :isa what)
   (:var mv20642 :isa regulator :plural t :theme mv20633 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20633 :isa protein :raw-text "mapk14" :uid "UP:Q16539" :name "MK14_HUMAN"))
  ("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
   (:var mv20662 :isa copular-predication :item mv20647 :value mv20645 :predicate mv20648)
   (:var mv20647 :isa what) (:var mv20645 :isa in-common :theme mv20660)
   (:var mv20660 :isa gene :plural t :has-determiner "THE" :expresses mv20657 :raw-text "genes")
   (:var mv20657 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv20652 mv20653 mv20646))
   (:var mv20652 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20653 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv20646 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20648 :isa be :predicate mv20658 :present "PRESENT")
   (:var mv20658 :isa transcription-factor :plural t :has-determiner "THE" :raw-text
    "transcription factors"))
  ("What are the transcription factors that regulate EELK1 and SRF?"
   (:var mv20666 :isa be :subject mv20665 :predicate mv20677 :present "PRESENT")
   (:var mv20665 :isa what)
   (:var mv20677 :isa transcription-factor :plural t :predication mv20669 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv20669 :isa regulate :agent mv20677 :that-rel t :object mv20675 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20675 :isa collection :raw-text "EELK1 and SRF" :type protein :number 2 :items
    (mv20674 mv20673))
   (:var mv20674 :isa bio-entity :name "EELK1")
   (:var mv20673 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
   (:var mv20683 :isa be :subject mv20682 :predicate mv20695 :present "PRESENT")
   (:var mv20682 :isa what)
   (:var mv20695 :isa transcription-factor :plural t :predication mv20686 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv20686 :isa regulate :agent mv20695 :that-rel t :object mv20693 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20693 :isa collection :raw-text "EGFR, SRF, STAAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv20687 mv20688 mv20692 mv20680 mv20681))
   (:var mv20687 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv20688 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20692 :isa bio-entity :name "STAAT3")
   (:var mv20680 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv20681 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv20702 :isa be :subject mv20701 :predicate mv20711 :present "PRESENT")
   (:var mv20701 :isa what)
   (:var mv20711 :isa transcription-factor :plural t :predication mv20705 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv20705 :isa regulate :agent mv20711 :that-rel t :object mv20709 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20709 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv20706 mv20707 mv20698 mv20699 mv20700))
   (:var mv20706 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv20707 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20698 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20699 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv20700 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
   (:var mv20716 :isa be :subject mv20715 :predicate mv20729 :present "PRESENT")
   (:var mv20715 :isa what)
   (:var mv20729 :isa regulator :plural t :theme mv20725 :has-determiner "THE" :context mv20718
    :raw-text "regulators")
   (:var mv20725 :isa collection :raw-text "CCND1, FOXM1, DHFR, and KLF4" :type protein :number 4
    :items (mv20712 mv20713 mv20723 mv20714))
   (:var mv20712 :isa protein :raw-text "CCND1" :uid "UP:P24385" :name "CCND1_HUMAN")
   (:var mv20713 :isa protein :raw-text "FOXM1" :uid "UP:Q08050" :name "FOXM1_HUMAN")
   (:var mv20723 :isa protein :raw-text "DHFR" :uid "UP:P00374" :name "DYR_HUMAN")
   (:var mv20714 :isa protein :raw-text "KLF4" :uid "UP:O43474" :name "KLF4_HUMAN")
   (:var mv20718 :isa upstream-segment :raw-text "upstream"))
  ("What cell cycle genes are regulated by FOS?"
   (:var mv20740 :isa regulate :object mv20739 :agent mv20737 :present "PRESENT" :raw-text
    "regulated")
   (:var mv20739 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv20730 :raw-text
    "genes")
   (:var mv20730 :isa cellular-process :raw-text "cell cycle" :name "cell cycle" :uid "GO:0007049")
   (:var mv20737 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What does ERBB regulate?"
   (:var mv20745 :isa regulate :|affected-process-OR-object| mv20742 :agent mv20744 :present
    "PRESENT" :raw-text "regulate")
   (:var mv20742 :isa what)
   (:var mv20744 :isa protein :raw-text "ERBB" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What does it regulate in liver"
   (:var mv20749 :isa regulate :|affected-process-OR-object| mv20746 :|agent-OR-cause| mv20748
    :organ mv20751 :present "PRESENT" :raw-text "regulate")
   (:var mv20746 :isa what) (:var mv20748 :isa pronoun/inanimate :word "it")
   (:var mv20751 :isa liver))
  ("What does miR-20b-5p target"
   (:var mv20757 :isa target :|affected-process-OR-object| mv20754 :agent mv20753 :present
    "PRESENT" :raw-text "target")
   (:var mv20754 :isa what)
   (:var mv20753 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What does p53 regulate?"
   (:var mv20761 :isa regulate :|affected-process-OR-object| mv20759 :agent mv20758 :present
    "PRESENT" :raw-text "regulate")
   (:var mv20759 :isa what)
   (:var mv20758 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What does rb1 regulate"
   (:var mv20765 :isa regulate :|affected-process-OR-object| mv20763 :agent mv20762 :present
    "PRESENT" :raw-text "regulate")
   (:var mv20763 :isa what)
   (:var mv20762 :isa protein :raw-text "rb1" :uid "UP:P06400" :name "RB_HUMAN"))
  ("What does smad2 regulate"
   (:var mv20769 :isa regulate :|affected-process-OR-object| mv20767 :agent mv20766 :present
    "PRESENT" :raw-text "regulate")
   (:var mv20767 :isa what)
   (:var mv20766 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What does stat regulate"
   (:var mv20773 :isa regulate :|affected-process-OR-object| mv20770 :agent mv20772 :present
    "PRESENT" :raw-text "regulate")
   (:var mv20770 :isa what)
   (:var mv20772 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What downregulates fzd8?"
   (:var mv20776 :isa downregulate :|agent-OR-cause| mv20775 :object mv20774 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv20775 :isa what)
   (:var mv20774 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What drug could I use to target pancreatic cancer?"
   (:var mv20790 :isa bio-use :patient mv20779 :modal mv20780 :agent mv20781 :theme mv20789
    :present "PRESENT" :raw-text "use")
   (:var mv20779 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv20780 :isa could)
   (:var mv20781 :isa interlocutor :name "speaker")
   (:var mv20789 :isa target :object mv20777 :raw-text "target")
   (:var mv20777 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug should I use for pancreatic cancer?"
   (:var mv20802 :isa bio-use :object mv20793 :modal mv20794 :agent mv20795 :disease mv20791
    :present "PRESENT" :raw-text "use")
   (:var mv20793 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv20794 :isa should)
   (:var mv20795 :isa interlocutor :name "speaker")
   (:var mv20791 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drugs are inhibitors of GRB2?"
   (:var mv20807 :isa be :subject mv20811 :predicate mv20813 :present "PRESENT")
   (:var mv20811 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv20813 :isa inhibitor :plural t :protein mv20803 :raw-text "inhibitors")
   (:var mv20803 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("What drugs inhibit MAP2K1?"
   (:var mv20818 :isa inhibit :agent mv20819 :object mv20814 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv20819 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv20814 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What drugs regulate BRAF?"
   (:var mv20823 :isa regulate :agent mv20825 :object mv20824 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20825 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv20824 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What drugs target BRAF?"
   (:var mv20830 :isa target :agent mv20832 :object mv20831 :present "PRESENT" :raw-text "target")
   (:var mv20832 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv20831 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are downstream of stat3?"
   (:var mv20837 :isa be :subject mv20841 :predicate mv20838 :present "PRESENT")
   (:var mv20841 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20838 :isa downstream-segment :pathwaycomponent mv20833 :raw-text "downstream")
   (:var mv20833 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are in the MAPK signaling pathway?"
   (:var mv20856 :isa copular-predication-of-pp :item mv20851 :value mv20855 :prep "IN" :predicate
    mv20847)
   (:var mv20851 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20855 :isa gene :plural t :context mv20843 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20843 :isa signaling-pathway :has-determiner "THE" :modifier mv20850 :raw-text
    "signaling pathway")
   (:var mv20850 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv20847 :isa be :present "PRESENT"))
  ("What genes are in the MAPK signaling pathways?"
   (:var mv20874 :isa copular-predication-of-pp :item mv20867 :value mv20873 :prep "IN" :predicate
    mv20863)
   (:var mv20867 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20873 :isa gene :plural t :context mv20869 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20869 :isa signaling-pathway :plural t :has-determiner "THE" :modifier mv20866 :raw-text
    "signaling pathways")
   (:var mv20866 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv20863 :isa be :present "PRESENT"))
  ("What genes are in the immune system pathway?"
   (:var mv20889 :isa copular-predication-of-pp :item mv20884 :value mv20888 :prep "IN" :predicate
    mv20880)
   (:var mv20884 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20888 :isa gene :plural t :context mv20883 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20883 :isa pathway :has-determiner "THE" :non-cellular-location mv20876 :raw-text
    "pathway")
   (:var mv20876 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv20880 :isa be :present "PRESENT"))
  ("What genes are in the prolactin signaling pathway?"
   (:var mv20904 :isa copular-predication-of-pp :item mv20899 :value mv20903 :prep "IN" :predicate
    mv20895)
   (:var mv20899 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20903 :isa gene :plural t :context mv20891 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20891 :isa signaling-pathway :has-determiner "THE" :modifier mv20898 :raw-text
    "signaling pathway")
   (:var mv20898 :isa protein :raw-text "prolactin" :uid "UP:P01236" :name "PRL_HUMAN")
   (:var mv20895 :isa be :present "PRESENT"))
  ("What genes are involved in the IL-12 pathway?"
   (:var mv20917 :isa involve :object mv20916 :|context-OR-theme| mv20915 :present "PRESENT")
   (:var mv20916 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20915 :isa pathway :has-determiner "THE" :modifier mv20907 :raw-text "pathway")
   (:var mv20907 :isa protein :raw-text "IL-12" :uid "NCIT:C20514" :name "NCIT:C20514"))
  ("What genes are involved in the Prolactin pathway?"
   (:var mv20929 :isa involve :object mv20928 :|context-OR-theme| mv20927 :present "PRESENT")
   (:var mv20928 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20927 :isa pathway :has-determiner "THE" :modifier mv20926 :raw-text "pathway")
   (:var mv20926 :isa protein :raw-text "Prolactin" :uid "UP:P01236" :name "PRL_HUMAN"))
  ("What genes are involved in the il-12 pathway?"
   (:var mv20941 :isa involve :object mv20940 :|context-OR-theme| mv20939 :present "PRESENT")
   (:var mv20940 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20939 :isa pathway :has-determiner "THE" :modifier mv20931 :raw-text "pathway")
   (:var mv20931 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12"))
  ("What genes are involved in the immune system pathway?"
   (:var mv20953 :isa involve :object mv20952 :|context-OR-theme| mv20951 :present "PRESENT")
   (:var mv20952 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20951 :isa pathway :has-determiner "THE" :non-cellular-location mv20943 :raw-text
    "pathway")
   (:var mv20943 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
   (:var mv20969 :isa regulate :object mv20968 :agent mv20967 :present "PRESENT" :superlative
    mv20962 :adverb mv20963 :raw-text "regulated")
   (:var mv20968 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20967 :isa collection :raw-text "miR-335-5p, miR-155-5p and miR-145-5p" :type micro-rna
    :number 3 :items (mv20955 mv20956 mv20957))
   (:var mv20955 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv20956 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv20957 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv20962 :isa superlative-quantifier :name "most")
   (:var mv20963 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
   (:var mv20986 :isa regulate :object mv20985 :agent mv20984 :present "PRESENT" :superlative
    mv20979 :adverb mv20980 :raw-text "regulated")
   (:var mv20985 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20984 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p"
    :type micro-rna :number 4 :items (mv20971 mv20972 mv20973 mv20974))
   (:var mv20971 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv20972 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv20973 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv20974 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075")
   (:var mv20979 :isa superlative-quantifier :name "most")
   (:var mv20980 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
   (:var mv21003 :isa regulate :object mv21002 :agent mv21001 :present "PRESENT" :superlative
    mv20996 :adverb mv20997 :raw-text "regulated")
   (:var mv21002 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21001 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p"
    :type micro-rna :number 4 :items (mv20988 mv20989 mv20990 mv20991))
   (:var mv20988 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv20989 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv20990 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv20991 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075")
   (:var mv20996 :isa superlative-quantifier :name "most")
   (:var mv20997 :isa frequently :name "frequently"))
  ("What genes are regulated by FAKEPRTN"
   (:var mv21013 :isa regulate :object mv21012 :agent mv21011 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21012 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21011 :isa bio-entity :name "FAKEPRTN"))
  ("What genes are regulated by elk1 and srf?"
   (:var mv21026 :isa regulate :object mv21025 :agent mv21024 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21025 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21024 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv21015 mv21023))
   (:var mv21015 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv21023 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
   (:var mv21039 :isa regulate :object mv21038 :agent mv21037 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21038 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21037 :isa collection :raw-text "miR-20b-5p and MIR-29B-1-5P" :type micro-rna :number 2
    :items (mv21028 mv21029))
   (:var mv21028 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv21029 :isa micro-rna :raw-text "MIR-29B-1-5P" :name "microRNA 29b-1-5pm" :uid
    "MIMAT0004514"))
  ("What genes are regulated by smda2"
   (:var mv21051 :isa regulate :object mv21050 :agent mv21049 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21050 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21049 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by srf"
   (:var mv21061 :isa regulate :object mv21060 :agent mv21059 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21060 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21059 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by stat3 and srf"
   (:var mv21074 :isa regulate :object mv21073 :agent mv21072 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21073 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21072 :isa collection :raw-text "stat3 and srf" :type protein :number 2 :items
    (mv21063 mv21071))
   (:var mv21063 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21071 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are targeted by lung cancer?"
   (:var mv21084 :isa target :object mv21083 :cause mv21076 :present "PRESENT" :raw-text
    "targeted")
   (:var mv21083 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21076 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes are there in the MAPK signaling pathway?"
   (:var mv21101 :isa copular-predication-of-pp :item mv21096 :value mv21100 :prep "IN" :predicate
    mv21090)
   (:var mv21096 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21100 :isa gene :plural t :context mv21086 :has-determiner "WHAT" :raw-text "genes")
   (:var mv21086 :isa signaling-pathway :has-determiner "THE" :modifier mv21095 :raw-text
    "signaling pathway")
   (:var mv21095 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv21090 :isa be :present "PRESENT"))
  ("What genes are used in the MAPK signaling pathway?"
   (:var mv21113 :isa bio-use :object mv21112 :context mv21103 :present "PRESENT" :raw-text "used")
   (:var mv21112 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21103 :isa signaling-pathway :has-determiner "THE" :modifier mv21111 :raw-text
    "signaling pathway")
   (:var mv21111 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv21121 :isa target :object mv21122 :cause mv21115 :present "PRESENT" :raw-text "target")
   (:var mv21122 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21115 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes does miR-20b-5p target?"
   (:var mv21129 :isa target :object mv21130 :agent mv21123 :present "PRESENT" :raw-text "target")
   (:var mv21130 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21123 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What genes does miR-562 target?"
   (:var mv21137 :isa target :object mv21138 :agent mv21131 :present "PRESENT" :raw-text "target")
   (:var mv21138 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21131 :isa micro-rna :raw-text "miR-562" :name "microRNA 562" :uid "MI0003569"))
  ("What genes does smad2 upregulate?"
   (:var mv21144 :isa upregulate :object mv21145 :agent mv21139 :present "PRESENT" :raw-text
    "upregulate")
   (:var mv21145 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21139 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes does stat3 regulate in liver cells?"
   (:var mv21151 :isa regulate :object mv21156 :agent mv21146 :cell-type mv21157 :present "PRESENT"
    :raw-text "regulate")
   (:var mv21156 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21146 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21157 :isa cell-type :plural t :non-cellular-location mv21153)
   (:var mv21153 :isa liver))
  ("What genes does stat3 regulate in liver?"
   (:var mv21164 :isa regulate :object mv21167 :agent mv21159 :organ mv21166 :present "PRESENT"
    :raw-text "regulate")
   (:var mv21167 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21159 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21166 :isa liver))
  ("What genes does stat3 regulate in lung?"
   (:var mv21174 :isa regulate :object mv21177 :agent mv21169 :organ mv21176 :present "PRESENT"
    :raw-text "regulate")
   (:var mv21177 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21169 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21176 :isa lung))
  ("What genes does stat3 regulate"
   (:var mv21184 :isa regulate :object mv21185 :agent mv21179 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21185 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21179 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes in the liver does stat3 regulate?"
   (:var mv21194 :isa regulate :object mv21197 :agent mv21186 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21197 :isa gene :plural t :organ mv21192 :has-determiner "WHAT" :raw-text "genes")
   (:var mv21192 :isa liver :has-determiner "THE")
   (:var mv21186 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes is stat3 upstream from?"
   (:var mv21202 :isa be :subject mv21206 :predicate mv21203 :present "PRESENT")
   (:var mv21206 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21203 :isa upstream-segment :modifier mv21198 :raw-text "upstream")
   (:var mv21198 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes is stat3 upstream of?"
   (:var mv21211 :isa be :subject mv21215 :predicate mv21212 :present "PRESENT")
   (:var mv21215 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21212 :isa upstream-segment :pathwaycomponent mv21215 :modifier mv21207 :raw-text
    "upstream")
   (:var mv21207 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes regulated by FOS are kinases?"
   (:var mv21222 :isa be :subject mv21227 :predicate mv21224 :present "PRESENT")
   (:var mv21227 :isa gene :plural t :predication mv21219 :has-determiner "WHAT" :raw-text "genes")
   (:var mv21219 :isa regulate :object mv21227 :agent mv21221 :past "PAST" :raw-text "regulated")
   (:var mv21221 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv21224 :isa kinase :plural t :raw-text "kinases"))
  ("What genes regulated by stat3 are kinases?"
   (:var mv21234 :isa be :subject mv21239 :predicate mv21236 :present "PRESENT")
   (:var mv21239 :isa gene :plural t :predication mv21232 :has-determiner "WHAT" :raw-text "genes")
   (:var mv21232 :isa regulate :object mv21239 :agent mv21228 :past "PAST" :raw-text "regulated")
   (:var mv21228 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21236 :isa kinase :plural t :raw-text "kinases"))
  ("What immune pathways involve KRAS and ELK1?"
   (:var mv21245 :isa involve :theme mv21250 :object mv21248 :present "PRESENT")
   (:var mv21250 :isa pathway :plural t :has-determiner "WHAT" :modifier mv21242 :raw-text
    "pathways")
   (:var mv21242 :isa immune :name "immune")
   (:var mv21248 :isa collection :raw-text "KRAS and ELK1" :type protein :number 2 :items
    (mv21246 mv21240))
   (:var mv21246 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv21240 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve SRF?"
   (:var mv21255 :isa involve :theme mv21258 :object mv21256 :present "PRESENT")
   (:var mv21258 :isa pathway :plural t :has-determiner "WHAT" :modifier mv21252 :raw-text
    "pathways")
   (:var mv21252 :isa immune :name "immune")
   (:var mv21256 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What immune pathways involve kras and elk1?"
   (:var mv21264 :isa involve :theme mv21269 :object mv21267 :present "PRESENT")
   (:var mv21269 :isa pathway :plural t :has-determiner "WHAT" :modifier mv21261 :raw-text
    "pathways")
   (:var mv21261 :isa immune :name "immune")
   (:var mv21267 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv21265 mv21259))
   (:var mv21265 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv21259 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve tap1 and jak1?"
   (:var mv21276 :isa involve :theme mv21280 :object mv21278 :present "PRESENT")
   (:var mv21280 :isa pathway :plural t :has-determiner "WHAT" :modifier mv21273 :raw-text
    "pathways")
   (:var mv21273 :isa immune :name "immune")
   (:var mv21278 :isa collection :raw-text "tap1 and jak1" :type protein :number 2 :items
    (mv21270 mv21271))
   (:var mv21270 :isa protein :raw-text "tap1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv21271 :isa protein :raw-text "jak1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What inhibits BRAF?"
   (:var mv21282 :isa inhibit :|agent-OR-cause| mv21281 :object mv21283 :present "PRESENT"
    :raw-text "inhibits")
   (:var mv21281 :isa what)
   (:var mv21283 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is STAT3?" (:var mv21286 :isa be :subject mv21285 :predicate mv21284 :present "PRESENT")
   (:var mv21285 :isa what)
   (:var mv21284 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is STAT?" (:var mv21288 :isa be :subject mv21287 :predicate mv21289 :present "PRESENT")
   (:var mv21287 :isa what)
   (:var mv21289 :isa protein :raw-text "STAT" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What is downstream of stat3?"
   (:var mv21292 :isa be :subject mv21291 :predicate mv21293 :present "PRESENT")
   (:var mv21291 :isa what)
   (:var mv21293 :isa downstream-segment :pathwaycomponent mv21290 :raw-text "downstream")
   (:var mv21290 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is erbb?" (:var mv21298 :isa be :subject mv21297 :predicate mv21299 :present "PRESENT")
   (:var mv21297 :isa what)
   (:var mv21299 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What is errb?" (:var mv21301 :isa be :subject mv21300 :predicate mv21302 :present "PRESENT")
   (:var mv21300 :isa what) (:var mv21302 :isa bio-entity :name "errb"))
  ("What is regulated by elk1"
   (:var mv21308 :isa regulate :|affected-process-OR-object| mv21304 :agent mv21303 :present
    "PRESENT" :raw-text "regulated")
   (:var mv21304 :isa what)
   (:var mv21303 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What is the evidence that kras decreases frizzled8?"
   (:var mv21312 :isa be :subject mv21311 :predicate mv21318 :present "PRESENT")
   (:var mv21311 :isa what) (:var mv21318 :isa evidence :statement mv21317 :has-determiner "THE")
   (:var mv21317 :isa decrease :agent mv21316 :object mv21310 :present "PRESENT" :raw-text
    "decreases")
   (:var mv21316 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv21310 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that kras decreases the amount of frizzled8?"
   (:var mv21321 :isa be :subject mv21320 :predicate mv21331 :present "PRESENT")
   (:var mv21320 :isa what) (:var mv21331 :isa evidence :statement mv21326 :has-determiner "THE")
   (:var mv21326 :isa decrease :agent mv21325 :|affected-process-OR-object| mv21328 :present
    "PRESENT" :raw-text "decreases")
   (:var mv21325 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv21328 :isa bio-amount :measured-item mv21319 :has-determiner "THE" :raw-text "amount")
   (:var mv21319 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the target of Selumetinib?"
   (:var mv21333 :isa be :subject mv21332 :predicate mv21335 :present "PRESENT")
   (:var mv21332 :isa what)
   (:var mv21335 :isa target-protein :agent mv21338 :has-determiner "THE" :raw-text "target")
   (:var mv21338 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What kinases does smad2 regulate"
   (:var mv21345 :isa regulate :object mv21346 :agent mv21340 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21346 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv21340 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv21355 :isa regulate :agent mv21360 :object mv21359 :present "PRESENT" :adverb mv21353
    :adverb mv21354 :raw-text "regulate")
   (:var mv21360 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv21359 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv21356 mv21357 mv21347 mv21348 mv21349))
   (:var mv21356 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv21357 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21347 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21348 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv21349 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv21353 :isa superlative-quantifier :name "most")
   (:var mv21354 :isa frequently :name "frequently"))
  ("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv21367 :isa regulate :agent mv21372 :object mv21371 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21372 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv21371 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv21368 mv21369 mv21361 mv21362 mv21363))
   (:var mv21368 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv21369 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21361 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21362 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv21363 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What micrornas are regulated by p53?"
   (:var mv21381 :isa regulate :object mv21380 :agent mv21373 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21380 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv21373 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What micrornas regulate genes in the mapk signaling pathways"
   (:var mv21388 :isa regulate :agent mv21394 :object mv21398 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21394 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv21398 :isa gene :plural t :context mv21396 :raw-text "genes")
   (:var mv21396 :isa signaling-pathway :plural t :has-determiner "THE" :modifier mv21393 :raw-text
    "signaling pathways")
   (:var mv21393 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
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
   (:var mv21402 :isa bio-entity :has-determiner "WHAT" :name "pahtways"))
  ("What pathways are common to STAT3 and SRF?"
   (:var mv21415 :isa copular-predication :item mv21413 :value mv21408 :predicate mv21407)
   (:var mv21413 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21408 :isa common :theme mv21412)
   (:var mv21412 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv21403 mv21411))
   (:var mv21403 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21411 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21407 :isa be :present "PRESENT"))
  ("What pathways involve cfos?"
   (:var mv21419 :isa involve :theme mv21421 :object mv21420 :present "PRESENT")
   (:var mv21421 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21420 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What pathways involve kras and elk1?"
   (:var mv21426 :isa involve :theme mv21430 :object mv21429 :present "PRESENT")
   (:var mv21430 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21429 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv21427 mv21422))
   (:var mv21427 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv21422 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What pathways involve the SRF transcription factor?"
   (:var mv21435 :isa involve :theme mv21438 :object mv21431 :present "PRESENT")
   (:var mv21438 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21431 :isa transcription-factor :has-determiner "THE" :modifier mv21437 :raw-text
    "transcription factor")
   (:var mv21437 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways utilize srf and is srf a kinase"
   (:var mv21450 :isa collection :raw-text "What pathways utilize srf and is srf" :type utilize
    :number 2 :items (mv21442 mv21445))
   (:var mv21442 :isa utilize :participant mv21449 :object mv21443 :present "PRESENT" :raw-text
    "utilize")
   (:var mv21449 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21443 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21445 :isa be :subject mv21449 :predicate mv21446 :present "PRESENT")
   (:var mv21446 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What proteins are in the MAPK family?"
   (:var mv21463 :isa copular-predication-of-pp :item mv21460 :value mv21461 :prep mv21455
    :predicate mv21454)
   (:var mv21460 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21461 :isa protein-family :has-determiner "THE" :raw-text "MAPK" :name
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
   (:var mv21455 :isa in :word "in") (:var mv21454 :isa be :present "PRESENT"))
  ("What proteins are targeted by lung cancer?"
   (:var mv21472 :isa target :object mv21471 :cause mv21464 :present "PRESENT" :raw-text
    "targeted")
   (:var mv21471 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21464 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does PLX-4720 target?"
   (:var mv21480 :isa target :object mv21481 :agent mv21474 :present "PRESENT" :raw-text "target")
   (:var mv21481 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21474 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What proteins does lung cancer target?"
   (:var mv21488 :isa target :object mv21489 :cause mv21482 :present "PRESENT" :raw-text "target")
   (:var mv21489 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21482 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does vemurafenib target?"
   (:var mv21496 :isa target :object mv21497 :agent mv21494 :present "PRESENT" :raw-text "target")
   (:var mv21497 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21494 :isa drug :raw-text "vemurafenib" :name "vemurafenib" :uid "PCID:42611257"))
  ("What proteins might lead to the development of lung cancer?"
   (:var mv21503 :isa lead :agent mv21508 :theme mv21506 :modal mv21502 :raw-text "lead")
   (:var mv21508 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21506 :isa development :disease mv21498 :has-determiner "THE" :raw-text "development")
   (:var mv21498 :isa cancer :name "lung cancer" :uid "TS-0571") (:var mv21502 :isa might))
  ("What proteins might lead to the development of pancreatic cancer."
   (:var mv21516 :isa lead :agent mv21521 :theme mv21519 :modal mv21515 :raw-text "lead")
   (:var mv21521 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21519 :isa development :disease mv21511 :has-determiner "THE" :raw-text "development")
   (:var mv21511 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv21515 :isa might))
  ("What reactome pathways involve immune signaling?"
   (:var mv21528 :isa involve :theme mv21532 :object mv21530 :present "PRESENT")
   (:var mv21532 :isa pathway :plural t :has-determiner "WHAT" :modifier mv21525 :raw-text
    "pathways")
   (:var mv21525 :isa database :name "Reactome" :uid "Reactome")
   (:var mv21530 :isa signal :modifier mv21529 :raw-text "signaling")
   (:var mv21529 :isa immune :name "immune"))
  ("What regulates HGF?"
   (:var mv21534 :isa regulate :|agent-OR-cause| mv21533 :object mv21535 :present "PRESENT"
    :raw-text "regulates")
   (:var mv21533 :isa what)
   (:var mv21535 :isa protein :raw-text "HGF" :uid "UP:P14210" :name "HGF_HUMAN"))
  ("What regulates SMURF2?"
   (:var mv21538 :isa regulate :|agent-OR-cause| mv21537 :object mv21536 :present "PRESENT"
    :raw-text "regulates")
   (:var mv21537 :isa what)
   (:var mv21536 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What regulates smurf2 in liver"
   (:var mv21541 :isa regulate :|agent-OR-cause| mv21540 :object mv21539 :present "PRESENT"
    :raw-text "regulates")
   (:var mv21540 :isa what)
   (:var mv21539 :isa protein :organ mv21543 :raw-text "smurf2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv21543 :isa liver))
  ("What signaling pathways are shared by RELA and ELK1?"
   (:var mv21556 :isa share :object mv21555 :participant mv21554 :present "PRESENT" :raw-text
    "shared")
   (:var mv21555 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv21554 :isa collection :raw-text "RELA and ELK1" :type protein :number 2 :items
    (mv21552 mv21547))
   (:var mv21552 :isa protein :raw-text "RELA" :uid "UP:Q04206" :name "TF65_HUMAN")
   (:var mv21547 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What signaling pathways are shared by STAT3 and SRF?"
   (:var mv21569 :isa share :object mv21568 :participant mv21567 :present "PRESENT" :raw-text
    "shared")
   (:var mv21568 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv21567 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv21560 mv21566))
   (:var mv21560 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21566 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
   (:var mv21583 :isa share :object mv21582 :participant mv21581 :present "PRESENT" :raw-text
    "shared")
   (:var mv21582 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv21581 :isa collection :raw-text "STAT3, SOCS3 and SRF" :type protein :number 3 :items
    (mv21573 mv21574 mv21580))
   (:var mv21573 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21574 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21580 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What tissues is STAT3 expressed in?"
   (:var mv21592 :isa tissue :plural t :has-determiner "WHAT"))
  ("What transcription factor produces SMURF2?"
   (:var mv21596 :isa bio-produce :agent mv21593 :object mv21594 :present "PRESENT" :raw-text
    "produces")
   (:var mv21593 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv21594 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factor transcribes SMURF2?"
   (:var mv21600 :isa transcribe :agent mv21597 :object mv21598 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv21597 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv21598 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv21621 :isa copular-predication :item mv21617 :value mv21609 :predicate mv21608)
   (:var mv21617 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21609 :isa common :theme mv21619)
   (:var mv21619 :isa gene :plural t :has-determiner "THE" :expresses mv21616 :raw-text "genes")
   (:var mv21616 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv21603 mv21604 mv21612 mv21605 mv21606))
   (:var mv21603 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21604 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21612 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv21605 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv21606 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv21608 :isa be :present "PRESENT"))
  ("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv21640 :isa copular-predication :item mv21636 :value mv21629 :predicate mv21628)
   (:var mv21636 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21629 :isa common :theme mv21638)
   (:var mv21638 :isa gene :plural t :has-determiner "THE" :expresses mv21635 :raw-text "genes")
   (:var mv21635 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv21624 mv21625 mv21626))
   (:var mv21624 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21625 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21626 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv21628 :isa be :present "PRESENT"))
  ("What genes does stat3 regulate?"
   (:var mv21646 :isa regulate :object mv21647 :agent mv21641 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21647 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21641 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What transcription factors are common to these genes?"
   (:var mv21660 :isa copular-predication :item mv21657 :value mv21652 :predicate mv21651)
   (:var mv21657 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21652 :isa common :theme mv21658)
   (:var mv21658 :isa gene :plural t :has-determiner "THESE" :raw-text "genes")
   (:var mv21651 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv21681 :isa copular-predication :item mv21677 :value mv21663 :predicate mv21669)
   (:var mv21677 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21663 :isa in-common :theme mv21679)
   (:var mv21679 :isa gene :plural t :has-determiner "THE" :expresses mv21676 :raw-text "genes")
   (:var mv21676 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv21664 mv21665 mv21672 mv21666 mv21667))
   (:var mv21664 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21665 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21672 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv21666 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv21667 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv21669 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv21700 :isa copular-predication :item mv21696 :value mv21684 :predicate mv21689)
   (:var mv21696 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21684 :isa in-common :theme mv21698)
   (:var mv21698 :isa gene :plural t :has-determiner "THE" :expresses mv21695 :raw-text "genes")
   (:var mv21695 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv21685 mv21686 mv21687))
   (:var mv21685 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21686 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21687 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv21689 :isa be :present "PRESENT"))
  ("What transcription factors are regulators of SMURF2 in liver?"
   (:var mv21705 :isa be :subject mv21711 :predicate mv21714 :present "PRESENT")
   (:var mv21711 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21714 :isa regulator :plural t :theme mv21703 :raw-text "regulators")
   (:var mv21703 :isa protein :organ mv21710 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv21710 :isa liver))
  ("What transcription factors are regulators of SMURF2?"
   (:var mv21719 :isa be :subject mv21723 :predicate mv21725 :present "PRESENT")
   (:var mv21723 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21725 :isa regulator :plural t :theme mv21717 :raw-text "regulators")
   (:var mv21717 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
   (:var mv21741 :isa share :object mv21740 :participant mv21743 :present "PRESENT" :raw-text
    "shared")
   (:var mv21740 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21743 :isa gene :plural t :has-determiner "THE" :expresses mv21739 :raw-text "genes")
   (:var mv21739 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv21734 mv21735 mv21728))
   (:var mv21734 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21735 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv21728 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What transcription factors regulate SMURF2 in liver?"
   (:var mv21749 :isa regulate :agent mv21752 :object mv21747 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21752 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21747 :isa protein :organ mv21751 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv21751 :isa liver))
  ("What transcription factors regulate ZEB1?"
   (:var mv21758 :isa regulate :agent mv21759 :object mv21756 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21759 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21756 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("What transcription factors regulate erk"
   (:var mv21763 :isa regulate :agent mv21765 :object mv21764 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21765 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21764 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors regulate genes in the mapk signaling pathwya"
   (:var mv21769 :isa regulate :agent mv21777 :theme mv21776 :object mv21771 :present "PRESENT"
    :raw-text "regulate")
   (:var mv21777 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21776 :isa bio-entity :has-determiner "THE" :modifier mv21774 :cellular-process mv21775
    :name "pathwya")
   (:var mv21774 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
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
   (:var mv21775 :isa signal :raw-text "signaling")
   (:var mv21771 :isa gene :plural t :raw-text "genes"))
  ("What transcription factors regulated frizzled8?"
   (:var mv21783 :isa regulate :agent mv21784 :object mv21781 :past "PAST" :raw-text "regulated")
   (:var mv21784 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21781 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What transcription factors transcribe SMURF2?"
   (:var mv21789 :isa transcribe :agent mv21790 :object mv21787 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv21790 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21787 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What upregulates fzd8?"
   (:var mv21793 :isa upregulate :|agent-OR-cause| mv21792 :object mv21791 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv21792 :isa what)
   (:var mv21791 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Where is STAT3 expressed?"
   (:var mv21799 :isa gene-transcript-express :location mv21795 :object mv21794 :past "PAST"
    :raw-text "expressed")
   (:var mv21795 :isa where)
   (:var mv21794 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which KEGG pathways involve SRF?"
   (:var mv21804 :isa involve :theme mv21807 :object mv21805 :present "PRESENT")
   (:var mv21807 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21801 :raw-text
    "pathways")
   (:var mv21801 :isa database :name "KEGG" :uid "KEGG")
   (:var mv21805 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which KEGG pathways use SRF?"
   (:var mv21813 :isa bio-use :agent mv21816 :object mv21814 :present "PRESENT" :raw-text "use")
   (:var mv21816 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21809 :raw-text
    "pathways")
   (:var mv21809 :isa database :name "KEGG" :uid "KEGG")
   (:var mv21814 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors regulate frizzled8?"
   (:var mv21821 :isa regulate :agent mv21822 :object mv21819 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21822 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21819 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which also regulate srf"
   (:var mv21826 :isa regulate :|agent-OR-cause| mv21823 :object mv21827 :present "PRESENT" :adverb
    mv21824 :raw-text "regulate")
   (:var mv21823 :isa which)
   (:var mv21827 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21824 :isa also :name "also"))
  ("Which apoptotic genes are regulated by stat3?"
   (:var mv21839 :isa regulate :object mv21838 :agent mv21828 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21838 :isa gene :plural t :has-determiner "WHICH" :cellular-process mv21830 :raw-text
    "genes")
   (:var mv21830 :isa apoptosis :raw-text "apoptotic")
   (:var mv21828 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which apoptotic genes is stat3 upstream of?"
   (:var mv21847 :isa be :subject mv21852 :predicate mv21848 :present "PRESENT")
   (:var mv21852 :isa gene :plural t :has-determiner "WHICH" :cellular-process mv21843 :raw-text
    "genes")
   (:var mv21843 :isa apoptosis :raw-text "apoptotic")
   (:var mv21848 :isa upstream-segment :pathwaycomponent mv21852 :modifier mv21841 :raw-text
    "upstream")
   (:var mv21841 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes are targeted by STAT3?"
   (:var mv21861 :isa target :object mv21860 :agent mv21853 :present "PRESENT" :raw-text
    "targeted")
   (:var mv21860 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv21853 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes regulated by stat3 are kinases?"
   (:var mv21869 :isa be :subject mv21874 :predicate mv21871 :present "PRESENT")
   (:var mv21874 :isa gene :plural t :predication mv21867 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv21867 :isa regulate :object mv21874 :agent mv21863 :past "PAST" :raw-text "regulated")
   (:var mv21863 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21871 :isa kinase :plural t :raw-text "kinases"))
  ("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv21893 :isa share :object mv21892 :participant mv21894 :present "PRESENT" :raw-text
    "shared")
   (:var mv21892 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21880 :raw-text
    "pathways")
   (:var mv21880 :isa immune :name "immune")
   (:var mv21894 :isa gene :plural t :expresses mv21890 :raw-text "genes")
   (:var mv21890 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv21875 mv21876 mv21886 mv21877 mv21878))
   (:var mv21875 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21876 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21886 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv21877 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv21878 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
   (:var mv21913 :isa share :object mv21912 :participant mv21915 :present "PRESENT" :raw-text
    "shared")
   (:var mv21912 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21900 :raw-text
    "pathways")
   (:var mv21900 :isa immune :name "immune")
   (:var mv21915 :isa gene :plural t :has-determiner "THE" :expresses mv21910 :raw-text "genes")
   (:var mv21910 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv21896 mv21897 mv21898))
   (:var mv21896 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21897 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21898 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which kegg pathways utilize genes regulated by smad2"
   (:var mv21922 :isa utilize :participant mv21928 :object mv21924 :present "PRESENT" :raw-text
    "utilize")
   (:var mv21928 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21919 :raw-text
    "pathways")
   (:var mv21919 :isa database :name "KEGG" :uid "KEGG")
   (:var mv21924 :isa gene :plural t :predication mv21925 :raw-text "genes")
   (:var mv21925 :isa regulate :object mv21924 :agent mv21917 :past "PAST" :raw-text "regulated")
   (:var mv21917 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which Reactome pathways utilize SRF?"
   (:var mv21935 :isa utilize :participant mv21938 :object mv21936 :present "PRESENT" :raw-text
    "utilize")
   (:var mv21938 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21932 :raw-text
    "pathways")
   (:var mv21932 :isa database :name "Reactome" :uid "Reactome")
   (:var mv21936 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which kegg pathways utilize it"
   (:var mv21943 :isa utilize :participant mv21946 :object mv21944 :present "PRESENT" :raw-text
    "utilize")
   (:var mv21946 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21940 :raw-text
    "pathways")
   (:var mv21940 :isa database :name "KEGG" :uid "KEGG")
   (:var mv21944 :isa pronoun/inanimate :word "it"))
  ("Which of them are regulated by elk1"
   (:var mv21954 :isa regulate :|affected-process-OR-object| mv21950 :agent mv21947 :present
    "PRESENT" :raw-text "regulated")
   (:var mv21950 :isa pronoun/plural :quantifier mv21948 :word "them") (:var mv21948 :isa which)
   (:var mv21947 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are expressed in liver"
   (:var mv21964 :isa gene-transcript-express :object mv21959 :organ mv21963 :present "PRESENT"
    :raw-text "expressed")
   (:var mv21959 :isa these :quantifier mv21957 :word "these") (:var mv21957 :isa which)
   (:var mv21963 :isa liver))
  ("Which of these are in immune pathways"
   (:var mv21977 :isa copular-predication-of-pp :item mv21969 :value mv21975 :prep mv21971
    :predicate mv21970)
   (:var mv21969 :isa these :quantifier mv21967 :word "these") (:var mv21967 :isa which)
   (:var mv21975 :isa pathway :plural t :modifier mv21972 :raw-text "pathways")
   (:var mv21972 :isa immune :name "immune") (:var mv21971 :isa in :word "in")
   (:var mv21970 :isa be :present "PRESENT"))
  ("what proteins does MEK phosphorylate?"
   (:var mv21984 :isa phosphorylate :substrate mv21985 :agent mv21983 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv21985 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21983 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Which of these are kinases"
   (:var mv21989 :isa be :subject mv21988 :predicate mv21991 :present "PRESENT")
   (:var mv21988 :isa these :quantifier mv21986 :word "these") (:var mv21986 :isa which)
   (:var mv21991 :isa kinase :plural t :raw-text "kinases"))
  ("Which of those are regulated by elk1"
   (:var mv22000 :isa regulate :|affected-process-OR-object| mv21996 :agent mv21993 :present
    "PRESENT" :raw-text "regulated")
   (:var mv21996 :isa those :quantifier mv21994 :word "those") (:var mv21994 :isa which)
   (:var mv21993 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by elk1"
   (:var mv22010 :isa regulate :|affected-process-OR-object| mv22006 :agent mv22003 :present
    "PRESENT" :raw-text "regulated")
   (:var mv22006 :isa these :quantifier mv22004 :word "these") (:var mv22004 :isa which)
   (:var mv22003 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by fakeprotein"
   (:var mv22020 :isa regulate :|affected-process-OR-object| mv22015 :agent mv22019 :present
    "PRESENT" :raw-text "regulated")
   (:var mv22015 :isa these :quantifier mv22013 :word "these") (:var mv22013 :isa which)
   (:var mv22019 :isa bio-entity :name "fakeprotein"))
  ("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv22039 :isa share :object mv22038 :participant mv22040 :present "PRESENT" :raw-text
    "shared")
   (:var mv22038 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22040 :isa gene :plural t :expresses mv22037 :raw-text "genes")
   (:var mv22037 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv22023 mv22024 mv22033 mv22025 mv22026))
   (:var mv22023 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22024 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv22033 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv22025 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv22026 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by stat3, socs3, and creb5"
   (:var mv22054 :isa share :object mv22053 :participant mv22052 :present "PRESENT" :raw-text
    "shared")
   (:var mv22053 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22052 :isa collection :raw-text "stat3, socs3, and creb5" :type protein :number 3 :items
    (mv22042 mv22043 mv22044))
   (:var mv22042 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22043 :isa protein :raw-text "socs3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv22044 :isa protein :raw-text "creb5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv22073 :isa share :object mv22072 :participant mv22075 :present "PRESENT" :raw-text
    "shared")
   (:var mv22072 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22075 :isa gene :plural t :has-determiner "THE" :expresses mv22071 :raw-text "genes")
   (:var mv22071 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv22056 mv22057 mv22067 mv22058 mv22059))
   (:var mv22056 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22057 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv22067 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv22058 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv22059 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways involve TAP1 and JAK1?"
   (:var mv22082 :isa involve :theme mv22085 :object mv22084 :present "PRESENT")
   (:var mv22085 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22084 :isa collection :raw-text "TAP1 and JAK1" :type protein :number 2 :items
    (mv22077 mv22078))
   (:var mv22077 :isa protein :raw-text "TAP1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv22078 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("Which pathways involve calcium?"
   (:var mv22089 :isa involve :theme mv22091 :object mv22090 :present "PRESENT")
   (:var mv22091 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22090 :isa calcium :raw-text "calcium"))
  ("Which pathways use SRF?"
   (:var mv22096 :isa bio-use :agent mv22098 :object mv22097 :present "PRESENT" :raw-text "use")
   (:var mv22098 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22097 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways use these"
   (:var mv22103 :isa bio-use :agent mv22105 :object mv22104 :present "PRESENT" :raw-text "use")
   (:var mv22105 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22104 :isa these :word "these"))
  ("Which pathways utilize SRF?"
   (:var mv22109 :isa utilize :participant mv22111 :object mv22110 :present "PRESENT" :raw-text
    "utilize")
   (:var mv22111 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22110 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways utilize these genes"
   (:var mv22115 :isa utilize :participant mv22119 :object mv22120 :present "PRESENT" :raw-text
    "utilize")
   (:var mv22119 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22120 :isa gene :plural t :has-determiner "THESE" :raw-text "genes"))
  ("Which proteins are targeted by STAT3?"
   (:var mv22129 :isa target :object mv22128 :agent mv22121 :present "PRESENT" :raw-text
    "targeted")
   (:var mv22128 :isa protein :plural t :has-determiner "WHICH" :raw-text "proteins")
   (:var mv22121 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which reactome pathways utilize srf"
   (:var mv22135 :isa utilize :participant mv22138 :object mv22136 :present "PRESENT" :raw-text
    "utilize")
   (:var mv22138 :isa pathway :plural t :has-determiner "WHICH" :modifier mv22132 :raw-text
    "pathways")
   (:var mv22132 :isa database :name "Reactome" :uid "Reactome")
   (:var mv22136 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which transcription factors are in the MAPK signaling pathway?"
   (:var mv22152 :isa copular-predication-of-pp :item mv22147 :value mv22151 :prep "IN" :predicate
    mv22143)
   (:var mv22147 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv22151 :isa transcription-factor :plural t :in-pathway mv22141 :has-determiner "WHICH"
    :raw-text "transcription factors")
   (:var mv22141 :isa signaling-pathway :has-determiner "THE" :modifier mv22146 :raw-text
    "signaling pathway")
   (:var mv22146 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv22143 :isa be :present "PRESENT"))
  ("Which transcription factors regulate frizzled8 in the liver?"
   (:var mv22158 :isa regulate :agent mv22162 :object mv22156 :present "PRESENT" :raw-text
    "regulate")
   (:var mv22162 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv22156 :isa protein :organ mv22161 :raw-text "frizzled8" :uid "UP:Q9H461" :name
    "FZD8_HUMAN")
   (:var mv22161 :isa liver :has-determiner "THE"))
  ("Which transcription factors regulate frizzled8?"
   (:var mv22168 :isa regulate :agent mv22169 :object mv22166 :present "PRESENT" :raw-text
    "regulate")
   (:var mv22169 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv22166 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Let's move AKT1 on top."
   (:var mv22177 :isa explicit-suggestion :suggestion mv22173 :marker let-as-directive)
   (:var mv22173 :isa move-to :at-relative-location mv22175 :theme mv22171 :present "PRESENT")
   (:var mv22175 :isa top-qua-location)
   (:var mv22171 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show the phosphorylated AKT1 on top."
   (:var mv22186 :isa explicit-suggestion :suggestion mv22180 :marker let-as-directive)
   (:var mv22180 :isa show :at-relative-location mv22184 :|statement-OR-theme| mv22179 :present
    "PRESENT")
   (:var mv22184 :isa top-qua-location)
   (:var mv22179 :isa protein :has-determiner "THE" :predication mv22182 :raw-text "AKT1" :uid
    "UP:P31749" :name "AKT1_HUMAN")
   (:var mv22182 :isa phosphorylate :substrate mv22179 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRAF?"
   (:var mv22189 :isa be :subject mv22188 :predicate mv22201 :present "PRESENT")
   (:var mv22188 :isa what)
   (:var mv22201 :isa upstream-segment :plural t :pathwaycomponent mv22197 :has-determiner "THE"
    :predication mv22191 :raw-text "upstreams")
   (:var mv22197 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv22187 mv22196))
   (:var mv22187 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv22196 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv22191 :isa common))
  ("Is stat3 expressed exclusively in liver?" (:var mv22209 :isa polar-question :statement mv22204)
   (:var mv22204 :isa gene-transcript-express :object mv22202 :organ mv22207 :past "PAST" :raw-text
    "expressed")
   (:var mv22202 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22207 :isa liver))
  ("Is stat3 expressed in spleen?" (:var mv22216 :isa polar-question :statement mv22212)
   (:var mv22212 :isa gene-transcript-express :object mv22210 :organ mv22214 :past "PAST" :raw-text
    "expressed")
   (:var mv22210 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22214 :isa spleen))
  ("Show phosphorylated akt1 on top."
   (:var mv22218 :isa show :at-relative-location mv22221 :|statement-OR-theme| mv22217 :present
    "PRESENT")
   (:var mv22221 :isa top-qua-location)
   (:var mv22217 :isa protein :predication mv22219 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv22219 :isa phosphorylate :substrate mv22217 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRA?"
   (:var mv22225 :isa be :subject mv22224 :predicate mv22237 :present "PRESENT")
   (:var mv22224 :isa what)
   (:var mv22237 :isa upstream-segment :plural t :pathwaycomponent mv22233 :has-determiner "THE"
    :predication mv22227 :raw-text "upstreams")
   (:var mv22233 :isa collection :raw-text "AKT1 and  BRA" :type protein :number 2 :items
    (mv22223 mv22232))
   (:var mv22223 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv22232 :isa bio-entity :name "BRA") (:var mv22227 :isa common))
  ("RAF activates MEK and MEK activates ERK."
   (:var mv22245 :isa collection :raw-text "RAF activates MEK and MEK activates ERK" :type
    bio-activate :number 2 :items (mv22239 mv22243))
   (:var mv22239 :isa bio-activate :agent mv22238 :object mv22240 :present "PRESENT" :raw-text
    "activates")
   (:var mv22238 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv22240 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv22243 :isa bio-activate :agent mv22242 :object mv22244 :present "PRESENT" :raw-text
    "activates")
   (:var mv22242 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv22244 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is the path from RAF to MEK?"
   (:var mv22247 :isa be :subject mv22246 :predicate mv22249 :present "PRESENT")
   (:var mv22246 :isa what)
   (:var mv22249 :isa path :end mv22253 :start mv22251 :has-determiner "THE")
   (:var mv22253 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv22251 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("remove the fact that mek activates erk"
   (:var mv22256 :isa remove :object mv22263 :present "PRESENT" :raw-text "remove")
   (:var mv22263 :isa fact :statement mv22261 :has-determiner "THE")
   (:var mv22261 :isa bio-activate :agent mv22260 :object mv22262 :present "PRESENT" :raw-text
    "activates")
   (:var mv22260 :isa protein-family :raw-text "mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv22262 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("let's show phosphorylated akt1 on top."
   (:var mv22271 :isa explicit-suggestion :suggestion mv22266 :marker let-as-directive)
   (:var mv22266 :isa show :at-relative-location mv22269 :|statement-OR-theme| mv22265 :present
    "PRESENT")
   (:var mv22269 :isa top-qua-location)
   (:var mv22265 :isa protein :predication mv22267 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv22267 :isa phosphorylate :substrate mv22265 :raw-text "phosphorylated"))
  ("what are positive regulators of the cfos gene?"
   (:var mv22275 :isa be :subject mv22274 :predicate mv22281 :present "PRESENT")
   (:var mv22274 :isa what)
   (:var mv22281 :isa positive-regulator :plural t :theme mv22279 :raw-text "positive regulators")
   (:var mv22279 :isa gene :has-determiner "THE" :expresses mv22278 :raw-text "gene")
   (:var mv22278 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what transcription factors regulate FOS in soft tissue?"
   (:var mv22286 :isa regulate :agent mv22289 :object mv22287 :present "PRESENT" :raw-text
    "regulate")
   (:var mv22289 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv22287 :isa protein :organ mv22284 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv22284 :isa bio-organ :name "soft tissue" :uid "NCIT:C12471"))
  ("Are there any drugs inhibiting MEK?" (:var mv22302 :isa polar-question :statement mv22299)
   (:var mv22299 :isa there-exists :value mv22301 :predicate mv22292)
   (:var mv22301 :isa drug :plural t :predication mv22297 :quantifier mv22294 :raw-text "drugs")
   (:var mv22297 :isa inhibit :agent mv22301 :object mv22298 :progressive "PROGRESSIVE" :raw-text
    "inhibiting")
   (:var mv22298 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv22294 :isa any :word "any") (:var mv22292 :isa syntactic-there))
  ("Are there any drugs targeting KRAS?" (:var mv22314 :isa polar-question :statement mv22311)
   (:var mv22311 :isa there-exists :value mv22313 :predicate mv22304)
   (:var mv22313 :isa drug :plural t :predication mv22309 :quantifier mv22306 :raw-text "drugs")
   (:var mv22309 :isa target :agent mv22313 :object mv22310 :progressive "PROGRESSIVE" :raw-text
    "targeting")
   (:var mv22310 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv22306 :isa any :word "any") (:var mv22304 :isa syntactic-there))
  ("Are there any genes in the liver that are regulated by stat3?"
   (:var mv22336 :isa polar-question :statement mv22329)
   (:var mv22329 :isa there-exists :value mv22335 :predicate mv22317)
   (:var mv22335 :isa gene :plural t :predication mv22331 :organ mv22324 :quantifier mv22319
    :raw-text "genes")
   (:var mv22331 :isa regulate :object mv22335 :that-rel t :agent mv22315 :present "PRESENT"
    :raw-text "regulated")
   (:var mv22315 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22324 :isa liver :has-determiner "THE") (:var mv22319 :isa any :word "any")
   (:var mv22317 :isa syntactic-there))
  ("Are there any genes involved in apoptosis that are regulated by stat3?"
   (:var mv22357 :isa polar-question :statement mv22351)
   (:var mv22351 :isa there-exists :value mv22356 :predicate mv22339)
   (:var mv22356 :isa gene :plural t :predication mv22344 :quantifier mv22341 :raw-text "genes")
   (:var mv22344 :isa involve :object mv22356 :theme mv22346 :past "PAST")
   (:var mv22346 :isa apoptosis :predication mv22353 :raw-text "apoptosis")
   (:var mv22353 :isa regulate :affected-process mv22346 :that-rel t :agent mv22337 :present
    "PRESENT" :raw-text "regulated")
   (:var mv22337 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22341 :isa any :word "any") (:var mv22339 :isa syntactic-there))
  ("Are there any genes stat3 is upstream of?" (:var mv22369 :isa there-exists :predicate mv22360)
   (:var mv22360 :isa syntactic-there))
  ("Are there any inhibitors for JAK1?" (:var mv22382 :isa polar-question :statement mv22378)
   (:var mv22378 :isa there-exists :value mv22381 :predicate mv22372)
   (:var mv22381 :isa inhibitor :plural t :|target-OR-protein| mv22370 :quantifier mv22374
    :raw-text "inhibitors")
   (:var mv22370 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv22374 :isa any :word "any") (:var mv22372 :isa syntactic-there))
  ("Are there genes regulated by elk1 and srf"
   (:var mv22397 :isa polar-question :statement mv22393)
   (:var mv22393 :isa there-exists :value mv22396 :predicate mv22385)
   (:var mv22396 :isa gene :plural t :predication mv22389 :raw-text "genes")
   (:var mv22389 :isa regulate :object mv22396 :agent mv22394 :past "PAST" :raw-text "regulated")
   (:var mv22394 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv22383 mv22392))
   (:var mv22383 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22392 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv22385 :isa syntactic-there))
  ("Can you find any apoptotic pathways stat3 is involved in?"
   (:var mv22412 :isa polar-question :statement mv22402)
   (:var mv22402 :isa bio-find :agent mv22400 :object mv22398 :modal "CAN" :raw-text "find")
   (:var mv22400 :isa interlocutor :name "hearer")
   (:var mv22398 :isa protein :quantifier mv22403 :cellular-process mv22404 :context mv22407
    :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22403 :isa any :word "any") (:var mv22404 :isa apoptosis :raw-text "apoptotic")
   (:var mv22407 :isa pathway :plural t :raw-text "pathways"))
  ("Can you find any apoptotic pathways that stat3 is involved in?" (:var mv22414 :isa can))
  ("Can you look up which genes targeted by stat3 are involved in apoptosis?"
   (:var mv22452 :isa polar-question :statement mv22451) (:var mv22451 :isa look-up :actor mv22433)
   (:var mv22433 :isa interlocutor :name "hearer"))
  ("Can you show me genes regulated by ELK1" (:var mv22464 :isa polar-question :statement mv22456)
   (:var mv22456 :isa show :agent mv22455 :|statement-OR-theme| mv22463 :beneficiary mv22457 :modal
    "CAN")
   (:var mv22455 :isa interlocutor :name "hearer")
   (:var mv22463 :isa gene :plural t :predication mv22460 :raw-text "genes")
   (:var mv22460 :isa regulate :object mv22463 :agent mv22453 :past "PAST" :raw-text "regulated")
   (:var mv22453 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22457 :isa interlocutor :name "speaker"))
  ("Can you show me genes that are regulated by ELK1"
   (:var mv22479 :isa polar-question :statement mv22468)
   (:var mv22468 :isa show :agent mv22467 :|statement-OR-theme| mv22478 :beneficiary mv22469 :modal
    "CAN")
   (:var mv22467 :isa interlocutor :name "hearer")
   (:var mv22478 :isa gene :plural t :predication mv22476 :raw-text "genes")
   (:var mv22476 :isa regulate :object mv22478 :that-rel t :agent mv22465 :modal "CAN" :raw-text
    "regulated")
   (:var mv22465 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22469 :isa interlocutor :name "speaker"))
  ("Can you show me the pahtways that involve SRF"
   (:var mv22489 :isa polar-question :statement mv22482)
   (:var mv22482 :isa show :agent mv22481 :|statement-OR-theme| mv22485 :beneficiary mv22483 :modal
    "CAN")
   (:var mv22481 :isa interlocutor :name "hearer")
   (:var mv22485 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv22483 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes regulated by STAT3"
   (:var mv22503 :isa polar-question :statement mv22493)
   (:var mv22493 :isa tell :agent mv22492 :theme mv22502 :beneficiary mv22494 :modal "CAN")
   (:var mv22492 :isa interlocutor :name "hearer")
   (:var mv22502 :isa gene :plural t :predication mv22498 :has-determiner "THE" :raw-text "genes")
   (:var mv22498 :isa regulate :object mv22502 :agent mv22490 :past "PAST" :raw-text "regulated")
   (:var mv22490 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22494 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that STAT3 regulates"
   (:var mv22516 :isa polar-question :statement mv22507)
   (:var mv22507 :isa tell :agent mv22506 :theme mv22515 :beneficiary mv22508 :modal "CAN")
   (:var mv22506 :isa interlocutor :name "hearer")
   (:var mv22515 :isa gene :plural t :predication mv22513 :has-determiner "THE" :raw-text "genes")
   (:var mv22513 :isa regulate :object mv22515 :that-rel t :agent mv22504 :present "PRESENT"
    :raw-text "regulates")
   (:var mv22504 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22508 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that are regulated by STAT3"
   (:var mv22533 :isa polar-question :statement mv22520)
   (:var mv22520 :isa tell :agent mv22519 :theme mv22532 :beneficiary mv22521 :modal "CAN")
   (:var mv22519 :isa interlocutor :name "hearer")
   (:var mv22532 :isa gene :plural t :predication mv22530 :has-determiner "THE" :raw-text "genes")
   (:var mv22530 :isa regulate :object mv22532 :that-rel t :agent mv22517 :modal "CAN" :raw-text
    "regulated")
   (:var mv22517 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22521 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes which are regulated by STAT3"
   (:var mv22551 :isa polar-question :statement mv22537)
   (:var mv22537 :isa tell :agent mv22536 :theme mv22550 :beneficiary mv22538 :modal "CAN")
   (:var mv22536 :isa interlocutor :name "hearer")
   (:var mv22550 :isa gene :plural t :predication mv22549 :has-determiner "THE" :raw-text "genes")
   (:var mv22549 :isa regulate :object mv22550 :agent mv22534 :modal mv22535 :raw-text "regulated")
   (:var mv22534 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22535 :isa can) (:var mv22538 :isa interlocutor :name "speaker"))
  ("Can you tell me what transcription factors are shared by elk1 and srf"
   (:var mv22569 :isa polar-question :statement mv22557)
   (:var mv22557 :isa tell :agent mv22556 :theme mv22567 :theme mv22558 :modal "CAN")
   (:var mv22556 :isa interlocutor :name "hearer")
   (:var mv22567 :isa share :object mv22566 :participant mv22565 :modal "CAN" :raw-text "shared")
   (:var mv22566 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv22565 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv22554 mv22564))
   (:var mv22554 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22564 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv22558 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes are regulated by STAT3"
   (:var mv22584 :isa polar-question :statement mv22573)
   (:var mv22573 :isa tell :agent mv22572 :theme mv22582 :theme mv22574 :modal "CAN")
   (:var mv22572 :isa interlocutor :name "hearer")
   (:var mv22582 :isa regulate :object mv22581 :agent mv22570 :modal "CAN" :raw-text "regulated")
   (:var mv22581 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv22570 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22574 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes in the liver are regulated by stat3?"
   (:var mv22604 :isa polar-question :statement mv22588)
   (:var mv22588 :isa tell :agent mv22587 :theme mv22600 :theme mv22589 :modal "CAN")
   (:var mv22587 :isa interlocutor :name "hearer")
   (:var mv22600 :isa regulate :object mv22603 :agent mv22585 :modal "CAN" :raw-text "regulated")
   (:var mv22603 :isa gene :plural t :organ mv22595 :has-determiner "WHICH" :raw-text "genes")
   (:var mv22595 :isa liver :has-determiner "THE")
   (:var mv22585 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22589 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes stat3 regulates?"
   (:var mv22616 :isa polar-question :statement mv22608)
   (:var mv22608 :isa tell :agent mv22607 :theme mv22615 :beneficiary mv22609 :modal "CAN")
   (:var mv22607 :isa interlocutor :name "hearer")
   (:var mv22615 :isa gene :plural t :predication mv22613 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv22613 :isa regulate :object mv22615 :agent mv22605 :present "PRESENT" :raw-text
    "regulates")
   (:var mv22605 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22609 :isa interlocutor :name "speaker"))
  ("Does STAT3 affect the expression of c-fos?"
   (:var mv22626 :isa polar-question :statement mv22624)
   (:var mv22624 :isa affect :agent mv22617 :affected-process mv22622 :raw-text "affect")
   (:var mv22617 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22622 :isa gene-transcript-express :object mv22618 :has-determiner "THE" :raw-text
    "expression")
   (:var mv22618 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 affect the expression of the c-fos gene?"
   (:var mv22638 :isa polar-question :statement mv22636)
   (:var mv22636 :isa affect :agent mv22627 :affected-process mv22632 :raw-text "affect")
   (:var mv22627 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22632 :isa gene-transcript-express :object mv22635 :has-determiner "THE" :raw-text
    "expression")
   (:var mv22635 :isa gene :has-determiner "THE" :expresses mv22628 :raw-text "gene")
   (:var mv22628 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase the expression of the c-fos gene?"
   (:var mv22651 :isa polar-question :statement mv22649)
   (:var mv22649 :isa increase :agent mv22639 :affected-process mv22645 :raw-text "increase")
   (:var mv22639 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22645 :isa gene-transcript-express :object mv22648 :has-determiner "THE" :raw-text
    "expression")
   (:var mv22648 :isa gene :has-determiner "THE" :expresses mv22640 :raw-text "gene")
   (:var mv22640 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase transcription of the c-fos gene?"
   (:var mv22663 :isa polar-question :statement mv22661)
   (:var mv22661 :isa increase :agent mv22652 :affected-process mv22657 :raw-text "increase")
   (:var mv22652 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22657 :isa transcribe :object mv22660 :raw-text "transcription")
   (:var mv22660 :isa gene :has-determiner "THE" :expresses mv22653 :raw-text "gene")
   (:var mv22653 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 affect the expression of cfos?"
   (:var mv22673 :isa polar-question :statement mv22671)
   (:var mv22671 :isa affect :agent mv22664 :affected-process mv22668 :raw-text "affect")
   (:var mv22664 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22668 :isa gene-transcript-express :object mv22670 :has-determiner "THE" :raw-text
    "expression")
   (:var mv22670 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the mTor pathway contain SGK1?" (:var mv22683 :isa polar-question :statement mv22682)
   (:var mv22682 :isa contain :theme mv22680 :patient mv22674)
   (:var mv22680 :isa pathway :has-determiner "THE" :modifier mv22677 :raw-text "pathway")
   (:var mv22677 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv22674 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Find a treatment for pancreatic cancer."
   (:var mv22686 :isa bio-find :object mv22688 :present "PRESENT" :raw-text "Find")
   (:var mv22688 :isa treatment :disease mv22684 :has-determiner "A" :raw-text "treatment")
   (:var mv22684 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("Find genes in the liver regulated by stat3"
   (:var mv22693 :isa bio-find :object mv22703 :present "PRESENT" :raw-text "Find")
   (:var mv22703 :isa gene :plural t :predication mv22699 :organ mv22698 :raw-text "genes")
   (:var mv22699 :isa regulate :object mv22703 :agent mv22691 :past "PAST" :raw-text "regulated")
   (:var mv22691 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22698 :isa liver :has-determiner "THE"))
  ("Find genes that stat3 regulates"
   (:var mv22707 :isa bio-find :object mv22712 :present "PRESENT" :raw-text "Find")
   (:var mv22712 :isa gene :plural t :predication mv22711 :raw-text "genes")
   (:var mv22711 :isa regulate :object mv22712 :that-rel t :agent mv22705 :present "PRESENT"
    :raw-text "regulates")
   (:var mv22705 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Find transcription factors shared by elk1 and srf"
   (:var mv22717 :isa bio-find :object mv22714 :present "PRESENT" :raw-text "Find")
   (:var mv22714 :isa transcription-factor :plural t :predication mv22718 :raw-text
    "transcription factors")
   (:var mv22718 :isa share :object mv22714 :participant mv22722 :past "PAST" :raw-text "shared")
   (:var mv22722 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv22715 mv22721))
   (:var mv22715 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22721 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("How does KRAS activate MAPK3?"
   (:var mv22729 :isa bio-activate :manner mv22726 :agent mv22728 :object mv22725 :present
    "PRESENT" :raw-text "activate")
   (:var mv22726 :isa how)
   (:var mv22728 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv22725 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does STAT3 regulate the c-fos gene?"
   (:var mv22734 :isa regulate :manner mv22732 :agent mv22730 :object mv22736 :present "PRESENT"
    :raw-text "regulate")
   (:var mv22732 :isa how)
   (:var mv22730 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22736 :isa gene :has-determiner "THE" :expresses mv22731 :raw-text "gene")
   (:var mv22731 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("How does knocking out p53 cause cancer via its effect on miRNAs?"
   (:var mv22752 :isa knock-out :raw-text "knocking out" :|agent-OR-cause| mv22738 :object mv22756)
   (:var mv22738 :isa how) (:var mv22756 :isa cancer :modifier mv22742 :modifier mv22742)
   (:var mv22742 :isa cause :by-means-of mv22754 :raw-text "cause")
   (:var mv22754 :isa effect :object mv22751 :participant mv22746 :raw-text "effect")
   (:var mv22751 :isa micro-rna :plural t :raw-text "miRNAs")
   (:var mv22746 :isa pronoun/inanimate :word "its"))
  ("How does stat3 regulate apoptosis in the liver?"
   (:var mv22760 :isa regulate :manner mv22758 :agent mv22757 :affected-process mv22761 :present
    "PRESENT" :raw-text "regulate")
   (:var mv22758 :isa how)
   (:var mv22757 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22761 :isa apoptosis :organ mv22764 :raw-text "apoptosis")
   (:var mv22764 :isa liver :has-determiner "THE"))
  ("How does stat3 regulate apoptosis?"
   (:var mv22769 :isa regulate :manner mv22767 :agent mv22766 :affected-process mv22770 :present
    "PRESENT" :raw-text "regulate")
   (:var mv22767 :isa how)
   (:var mv22766 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22770 :isa apoptosis :raw-text "apoptosis"))
  ("How does stat3 regulate apoptotic genes?"
   (:var mv22774 :isa regulate :manner mv22772 :agent mv22771 :object mv22779 :present "PRESENT"
    :raw-text "regulate")
   (:var mv22772 :isa how)
   (:var mv22771 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22779 :isa gene :plural t :cellular-process mv22775 :raw-text "genes")
   (:var mv22775 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotic regulation?"
   (:var mv22789 :isa wh-question :statement mv22782 :wh how)
   (:var mv22782 :isa be :predicate mv22780 :present "PRESENT")
   (:var mv22780 :isa protein :predication mv22783 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv22783 :isa involve :object mv22780 :theme mv22787 :past "PAST")
   (:var mv22787 :isa regulate :cellular-process mv22785 :raw-text "regulation")
   (:var mv22785 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotis regulation in the liver?"
   (:var mv22802 :isa wh-question :statement mv22792 :wh how)
   (:var mv22792 :isa be :predicate mv22790 :present "PRESENT")
   (:var mv22790 :isa protein :predication mv22793 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv22793 :isa involve :object mv22790 :theme mv22795 :past "PAST")
   (:var mv22795 :isa regulate :organ mv22798 :|agent-OR-object| mv22799 :raw-text "regulation")
   (:var mv22798 :isa liver :has-determiner "THE")
   (:var mv22799 :isa bio-entity :name "apoptotis"))
  ("How is stat3 involved in regulating apoptosis?"
   (:var mv22811 :isa wh-question :statement mv22805 :wh how)
   (:var mv22805 :isa be :predicate mv22803 :present "PRESENT")
   (:var mv22803 :isa protein :predication mv22806 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv22806 :isa involve :object mv22803 :theme mv22808 :past "PAST")
   (:var mv22808 :isa regulate :affected-process mv22809 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv22809 :isa apoptosis :raw-text "apoptosis"))
  ("How is stat3 used to regulate apoptosis?"
   (:var mv22820 :isa wh-question :statement mv22814 :wh how)
   (:var mv22814 :isa be :predicate mv22812 :present "PRESENT")
   (:var mv22812 :isa protein :predication mv22815 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv22815 :isa bio-use :object mv22812 :theme mv22819 :past "PAST" :raw-text "used")
   (:var mv22819 :isa regulate :affected-process mv22818 :raw-text "regulate")
   (:var mv22818 :isa apoptosis :raw-text "apoptosis"))
  ("How many genes are in the MAPK signaling pathway?"
   (:var mv22834 :isa copular-predication-of-pp :item mv22829 :value mv22833 :prep "IN" :predicate
    mv22825)
   (:var mv22829 :isa gene :plural t :quantifier how-many :raw-text "genes")
   (:var mv22833 :isa gene :plural t :context mv22822 :quantifier how-many :raw-text "genes")
   (:var mv22822 :isa signaling-pathway :has-determiner "THE" :modifier mv22828 :raw-text
    "signaling pathway")
   (:var mv22828 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv22825 :isa be :present "PRESENT"))
  ("How might a STAT3 mutation affect breast cancer?"
   (:var mv22843 :isa affect :manner mv22838 :modal mv22839 :agent mv22841 :object mv22837 :present
    "PRESENT" :raw-text "affect")
   (:var mv22838 :isa how) (:var mv22839 :isa might)
   (:var mv22841 :isa mutation :has-determiner "A" :|agent-OR-object| mv22836 :raw-text "mutation")
   (:var mv22836 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22837 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Is STAT3 a regulator for c-fos?" (:var mv22851 :isa polar-question :statement mv22846)
   (:var mv22846 :isa be :subject mv22844 :predicate mv22848)
   (:var mv22844 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22848 :isa regulator :theme mv22845 :has-determiner "A" :raw-text "regulator")
   (:var mv22845 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of c-fos" (:var mv22859 :isa polar-question :statement mv22854)
   (:var mv22854 :isa be :subject mv22852 :predicate mv22856)
   (:var mv22852 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22856 :isa regulator :theme mv22853 :has-determiner "A" :raw-text "regulator")
   (:var mv22853 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene" (:var mv22869 :isa polar-question :statement mv22862)
   (:var mv22862 :isa be :subject mv22860 :predicate mv22864)
   (:var mv22860 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22864 :isa regulator :theme mv22867 :has-determiner "A" :raw-text "regulator")
   (:var mv22867 :isa gene :has-determiner "THE" :expresses mv22861 :raw-text "gene")
   (:var mv22861 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene?" (:var mv22879 :isa polar-question :statement mv22872)
   (:var mv22872 :isa be :subject mv22870 :predicate mv22874)
   (:var mv22870 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22874 :isa regulator :theme mv22877 :has-determiner "A" :raw-text "regulator")
   (:var mv22877 :isa gene :has-determiner "THE" :expresses mv22871 :raw-text "gene")
   (:var mv22871 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos gene"
   (:var mv22888 :isa polar-question :statement mv22883)
   (:var mv22883 :isa be :subject mv22880 :predicate mv22881)
   (:var mv22880 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22881 :isa transcription-factor :controlled-gene mv22886 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv22886 :isa gene :expresses mv22882 :raw-text "gene")
   (:var mv22882 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos"
   (:var mv22896 :isa polar-question :statement mv22892)
   (:var mv22892 :isa be :subject mv22889 :predicate mv22890)
   (:var mv22889 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22890 :isa transcription-factor :controlled-gene mv22891 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv22891 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos?"
   (:var mv22904 :isa polar-question :statement mv22900)
   (:var mv22900 :isa be :subject mv22897 :predicate mv22898)
   (:var mv22897 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22898 :isa transcription-factor :controlled-gene mv22899 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv22899 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for the c-fos gene?"
   (:var mv22914 :isa polar-question :statement mv22908)
   (:var mv22908 :isa be :subject mv22905 :predicate mv22906)
   (:var mv22905 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22906 :isa transcription-factor :controlled-gene mv22912 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv22912 :isa gene :has-determiner "THE" :expresses mv22907 :raw-text "gene")
   (:var mv22907 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 regulated by c-fos?" (:var mv22921 :isa polar-question :statement mv22918)
   (:var mv22918 :isa regulate :object mv22915 :agent mv22916 :past "PAST" :raw-text "regulated")
   (:var mv22915 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22916 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Stat3 a transcription factor for the c-fos gene"
   (:var mv22931 :isa polar-question :statement mv22925)
   (:var mv22925 :isa be :subject mv22922 :predicate mv22923)
   (:var mv22922 :isa protein :raw-text "Stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22923 :isa transcription-factor :controlled-gene mv22929 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv22929 :isa gene :has-determiner "THE" :expresses mv22924 :raw-text "gene")
   (:var mv22924 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List genes regulated by ELK1" (:var mv22933 :isa list :theme mv22935 :present "PRESENT")
   (:var mv22935 :isa gene :plural t :predication mv22936 :raw-text "genes")
   (:var mv22936 :isa regulate :object mv22935 :agent mv22932 :past "PAST" :raw-text "regulated")
   (:var mv22932 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List genes that are regulated by ELK1"
   (:var mv22941 :isa list :theme mv22950 :present "PRESENT")
   (:var mv22950 :isa gene :plural t :predication mv22948 :raw-text "genes")
   (:var mv22948 :isa regulate :object mv22950 :that-rel t :agent mv22940 :present "PRESENT"
    :raw-text "regulated")
   (:var mv22940 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List some genes that stat3 regulates"
   (:var mv22952 :isa list :theme mv22959 :present "PRESENT")
   (:var mv22959 :isa gene :plural t :predication mv22957 :quantifier mv22953 :raw-text "genes")
   (:var mv22957 :isa regulate :object mv22959 :that-rel t :agent mv22951 :present "PRESENT"
    :raw-text "regulates")
   (:var mv22951 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22953 :isa some :word "some"))
  ("List the genes STAT3 regulates" (:var mv22961 :isa list :theme mv22967 :present "PRESENT")
   (:var mv22967 :isa gene :plural t :predication mv22965 :has-determiner "THE" :raw-text "genes")
   (:var mv22965 :isa regulate :object mv22967 :agent mv22960 :present "PRESENT" :raw-text
    "regulates")
   (:var mv22960 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes that are regulated by STAT3"
   (:var mv22969 :isa list :theme mv22980 :present "PRESENT")
   (:var mv22980 :isa gene :plural t :predication mv22978 :has-determiner "THE" :raw-text "genes")
   (:var mv22978 :isa regulate :object mv22980 :that-rel t :agent mv22968 :present "PRESENT"
    :raw-text "regulated")
   (:var mv22968 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes which STAT3 regulates"
   (:var mv22982 :isa list :theme mv22989 :present "PRESENT")
   (:var mv22989 :isa gene :plural t :predication mv22987 :has-determiner "THE" :raw-text "genes")
   (:var mv22987 :isa regulate :object mv22989 :agent mv22981 :present "PRESENT" :raw-text
    "regulates")
   (:var mv22981 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("List the pahtways that involve SRF" (:var mv22990 :isa list :theme mv22992 :present "PRESENT")
   (:var mv22992 :isa bio-entity :has-determiner "THE" :name "pahtways"))
  ("Show me genes regulated by ELK1"
   (:var mv22997 :isa show :|statement-OR-theme| mv23004 :beneficiary mv22998 :present "PRESENT")
   (:var mv23004 :isa gene :plural t :predication mv23001 :raw-text "genes")
   (:var mv23001 :isa regulate :object mv23004 :agent mv22996 :past "PAST" :raw-text "regulated")
   (:var mv22996 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22998 :isa interlocutor :name "speaker"))
  ("Show me genes that are regulated by ELK1"
   (:var mv23006 :isa show :|statement-OR-theme| mv23016 :beneficiary mv23007 :present "PRESENT")
   (:var mv23016 :isa gene :plural t :predication mv23014 :raw-text "genes")
   (:var mv23014 :isa regulate :object mv23016 :that-rel t :agent mv23005 :present "PRESENT"
    :raw-text "regulated")
   (:var mv23005 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23007 :isa interlocutor :name "speaker"))
  ("Show me genes that stat3 regulates"
   (:var mv23018 :isa show :|statement-OR-theme| mv23024 :beneficiary mv23019 :present "PRESENT")
   (:var mv23024 :isa gene :plural t :predication mv23023 :raw-text "genes")
   (:var mv23023 :isa regulate :object mv23024 :that-rel t :agent mv23017 :present "PRESENT"
    :raw-text "regulates")
   (:var mv23017 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23019 :isa interlocutor :name "speaker"))
  ("Show me the pahtways that involve SRF"
   (:var mv23025 :isa show :|statement-OR-theme| mv23028 :beneficiary mv23026 :present "PRESENT")
   (:var mv23028 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv23026 :isa interlocutor :name "speaker"))
  ("Show me what transcription factors are shared by elk1 and srf"
   (:var mv23047 :isa show :statement mv23045 :theme mv23036 :present "PRESENT")
   (:var mv23045 :isa share :object mv23044 :participant mv23043 :present "PRESENT" :raw-text
    "shared")
   (:var mv23044 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv23043 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv23034 mv23042))
   (:var mv23034 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23042 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv23036 :isa interlocutor :name "speaker"))
  ("Show me which genes are regulated by STAT3"
   (:var mv23060 :isa show :statement mv23058 :theme mv23050 :present "PRESENT")
   (:var mv23058 :isa regulate :object mv23057 :agent mv23048 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23057 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv23048 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23050 :isa interlocutor :name "speaker"))
  ("Show the genes which STAT3 regulates"
   (:var mv23062 :isa show :|statement-OR-theme| mv23069 :present "PRESENT")
   (:var mv23069 :isa gene :plural t :predication mv23067 :has-determiner "THE" :raw-text "genes")
   (:var mv23067 :isa regulate :object mv23069 :agent mv23061 :present "PRESENT" :raw-text
    "regulates")
   (:var mv23061 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("Show the pahtways that involve SRF"
   (:var mv23070 :isa show :|statement-OR-theme| mv23072 :present "PRESENT")
   (:var mv23072 :isa bio-entity :has-determiner "THE" :name "pahtways"))
  ("Show transcription factors that are shared by elk1 and srf"
   (:var mv23079 :isa show :|statement-OR-theme| mv23089 :present "PRESENT")
   (:var mv23089 :isa transcription-factor :plural t :predication mv23087 :raw-text
    "transcription factors")
   (:var mv23087 :isa share :object mv23089 :that-rel t :participant mv23086 :present "PRESENT"
    :raw-text "shared")
   (:var mv23086 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv23078 mv23085))
   (:var mv23078 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23085 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me the genes which are regulated by STAT3"
   (:var mv23091 :isa tell :theme mv23104 :beneficiary mv23092 :present "PRESENT")
   (:var mv23104 :isa gene :plural t :predication mv23103 :has-determiner "THE" :raw-text "genes")
   (:var mv23103 :isa regulate :object mv23104 :agent mv23090 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23090 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23092 :isa interlocutor :name "speaker"))
  ("Tell me what genes are regulated by elk1 and srf"
   (:var mv23106 :isa tell :theme mv23118 :theme mv23107 :present "PRESENT")
   (:var mv23118 :isa regulate :object mv23117 :agent mv23116 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23117 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv23116 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv23105 mv23115))
   (:var mv23105 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23115 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv23107 :isa interlocutor :name "speaker"))
  ("Tell me which genes are regulated by STAT3"
   (:var mv23121 :isa tell :theme mv23130 :theme mv23122 :present "PRESENT")
   (:var mv23130 :isa regulate :object mv23129 :agent mv23120 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23129 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv23120 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23122 :isa interlocutor :name "speaker"))
  ("What are positive regulators of cfos?"
   (:var mv23135 :isa be :subject mv23134 :predicate mv23139 :present "PRESENT")
   (:var mv23134 :isa what)
   (:var mv23139 :isa positive-regulator :plural t :theme mv23137 :raw-text "positive regulators")
   (:var mv23137 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are some regulators of SMURF2?"
   (:var mv23142 :isa be :subject mv23141 :predicate mv23149 :present "PRESENT")
   (:var mv23141 :isa what)
   (:var mv23149 :isa regulator :plural t :theme mv23140 :quantifier mv23143 :raw-text
    "regulators")
   (:var mv23140 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv23143 :isa some :word "some"))
  ("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
   (:var mv23156 :isa be :subject mv23155 :predicate mv23168 :present "PRESENT")
   (:var mv23155 :isa what)
   (:var mv23168 :isa regulator :plural t :theme mv23164 :has-determiner "THE" :predication mv23158
    :raw-text "regulators")
   (:var mv23164 :isa collection :raw-text "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :type
    protein :number 6 :items (mv23150 mv23151 mv23162 mv23152 mv23153 mv23154))
   (:var mv23150 :isa protein :raw-text "ABI2" :uid "UP:Q9NYB9" :name "ABI2_HUMAN")
   (:var mv23151 :isa protein :raw-text "ABL1" :uid "UP:P00519" :name "ABL1_HUMAN")
   (:var mv23162 :isa protein :raw-text "ACADSB" :uid "UP:P45954" :name "ACDSB_HUMAN")
   (:var mv23152 :isa protein :raw-text "ADGRL1" :uid "UP:O94910" :name "AGRL1_HUMAN")
   (:var mv23153 :isa protein :raw-text "ADRM1" :uid "UP:Q16186" :name "ADRM1_HUMAN")
   (:var mv23154 :isa protein :raw-text "AGAP1" :uid "UP:Q9UPQ3" :name "AGAP1_HUMAN")
   (:var mv23158 :isa common))
  ("What are the common regulators of elk1 and srf"
   (:var mv23171 :isa be :subject mv23170 :predicate mv23183 :present "PRESENT")
   (:var mv23170 :isa what)
   (:var mv23183 :isa regulator :plural t :theme mv23179 :has-determiner "THE" :predication mv23173
    :raw-text "regulators")
   (:var mv23179 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv23169 mv23178))
   (:var mv23169 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23178 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv23173 :isa common))
  ("What are the common regulators of elk1 and srg"
   (:var mv23186 :isa be :subject mv23185 :predicate mv23198 :present "PRESENT")
   (:var mv23185 :isa what)
   (:var mv23198 :isa regulator :plural t :theme mv23194 :has-determiner "THE" :predication mv23188
    :raw-text "regulators")
   (:var mv23194 :isa collection :raw-text "elk1 and srg" :type protein :number 2 :items
    (mv23184 mv23193))
   (:var mv23184 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23193 :isa bio-entity :name "srg") (:var mv23188 :isa common))
  ("What are the common regulators of those genes"
   (:var mv23200 :isa be :subject mv23199 :predicate mv23213 :present "PRESENT")
   (:var mv23199 :isa what)
   (:var mv23213 :isa regulator :plural t :theme mv23211 :has-determiner "THE" :predication mv23202
    :raw-text "regulators")
   (:var mv23211 :isa gene :plural t :has-determiner "THOSE" :raw-text "genes")
   (:var mv23202 :isa common))
  ("What are the genes regulated by STAT3?"
   (:var mv23216 :isa be :subject mv23215 :predicate mv23224 :present "PRESENT")
   (:var mv23215 :isa what)
   (:var mv23224 :isa gene :plural t :predication mv23220 :has-determiner "THE" :raw-text "genes")
   (:var mv23220 :isa regulate :object mv23224 :agent mv23214 :past "PAST" :raw-text "regulated")
   (:var mv23214 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the genes which STAT3 regulates?"
   (:var mv23227 :isa be :subject mv23226 :predicate mv23234 :present "PRESENT")
   (:var mv23226 :isa what)
   (:var mv23234 :isa gene :plural t :predication mv23232 :has-determiner "THE" :raw-text "genes")
   (:var mv23232 :isa regulate :object mv23234 :agent mv23225 :present "PRESENT" :raw-text
    "regulates")
   (:var mv23225 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv23239 :isa be :subject mv23238 :predicate mv23253 :present "PRESENT")
   (:var mv23238 :isa what)
   (:var mv23253 :isa regulator :plural t :theme mv23249 :has-determiner "THE" :modifier mv23242
    :raw-text "regulators")
   (:var mv23249 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv23246 mv23247 mv23235 mv23236 mv23237))
   (:var mv23246 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv23247 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv23235 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23236 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv23237 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv23242 :isa frequent :comparative mv23241 :name "frequent")
   (:var mv23241 :isa superlative-quantifier :name "most"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv23260 :isa be :subject mv23259 :predicate mv23269 :present "PRESENT")
   (:var mv23259 :isa what)
   (:var mv23269 :isa transcription-factor :plural t :predication mv23263 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv23263 :isa regulate :agent mv23269 :that-rel t :object mv23267 :present "PRESENT"
    :raw-text "regulate")
   (:var mv23267 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number
    5 :items (mv23264 mv23265 mv23256 mv23257 mv23258))
   (:var mv23264 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv23265 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv23256 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23257 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv23258 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What other genes are in the first pathway?"
   (:var mv23285 :isa copular-predication-of-pp :item mv23280 :value mv23284 :prep "IN" :predicate
    mv23274)
   (:var mv23280 :isa gene :plural t :has-determiner "WHAT" :modifier mv23271 :raw-text "genes")
   (:var mv23271 :isa other :name "other")
   (:var mv23284 :isa gene :plural t :context mv23278 :has-determiner "WHAT" :modifier mv23271
    :raw-text "genes")
   (:var mv23278 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv23274 :isa be :present "PRESENT"))
  ("What other proteins are in the first pathway?"
   (:var mv23302 :isa copular-predication-of-pp :item mv23297 :value mv23301 :prep "IN" :predicate
    mv23291)
   (:var mv23297 :isa protein :plural t :has-determiner "WHAT" :modifier mv23288 :raw-text
    "proteins")
   (:var mv23288 :isa other :name "other")
   (:var mv23301 :isa protein :plural t :in-pathway mv23295 :has-determiner "WHAT" :modifier
    mv23288 :raw-text "proteins")
   (:var mv23295 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv23291 :isa be :present "PRESENT"))
  ("What pathways are they in?"
   (:var mv23307 :isa be :subject mv23310 :predicate mv23308 :present "PRESENT")
   (:var mv23310 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv23308 :isa pronoun/plural :word "they"))
  ("What pathways involve SOARING?"
   (:var mv23314 :isa involve :theme mv23316 :object mv23315 :present "PRESENT")
   (:var mv23316 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv23315 :isa soar :progressive "PROGRESSIVE" :raw-text "SOARING"))
  ("What proteins are in the first pathway"
   (:var mv23330 :isa copular-predication-of-pp :item mv23325 :value mv23329 :prep "IN" :predicate
    mv23320)
   (:var mv23325 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv23329 :isa protein :plural t :in-pathway mv23324 :has-determiner "WHAT" :raw-text
    "proteins")
   (:var mv23324 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv23320 :isa be :present "PRESENT"))
  ("What pathways involve frizzled8?"
   (:var mv23336 :isa involve :theme mv23337 :object mv23332 :present "PRESENT")
   (:var mv23337 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv23332 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What genes are in the first pathway"
   (:var mv23351 :isa copular-predication-of-pp :item mv23346 :value mv23350 :prep "IN" :predicate
    mv23341)
   (:var mv23346 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv23350 :isa gene :plural t :context mv23345 :has-determiner "WHAT" :raw-text "genes")
   (:var mv23345 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv23341 :isa be :present "PRESENT"))
  ("What questions can you answer about microRNAs?"
   (:var mv23366 :isa answer :patient mv23364 :modal mv23357 :agent mv23358 :theme mv23363 :present
    "PRESENT")
   (:var mv23364 :isa bio-question :plural t :has-determiner "WHAT") (:var mv23357 :isa can)
   (:var mv23358 :isa interlocutor :name "hearer")
   (:var mv23363 :isa micro-rna :plural t :raw-text "microRNAs"))
  ("What transcription factors regulate mothers against decapentaplegic?"
   (:var mv23371 :isa regulate :agent mv23372 :object mv23369 :present "PRESENT" :raw-text
    "regulate")
   (:var mv23372 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv23369 :isa protein-family :raw-text "mothers against decapentaplegic" :name "SMAD"
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
   (:var mv23376 :isa regulate :location mv23374 :agent mv23373 :object mv23377 :present "PRESENT"
    :raw-text "regulate")
   (:var mv23374 :isa where)
   (:var mv23373 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23377 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which KEGG pathways involve ATP?"
   (:var mv23382 :isa involve :theme mv23385 :object mv23383 :present "PRESENT")
   (:var mv23385 :isa pathway :plural t :has-determiner "WHICH" :modifier mv23379 :raw-text
    "pathways")
   (:var mv23379 :isa database :name "KEGG" :uid "KEGG")
   (:var mv23383 :isa nucleotide :raw-text "ATP" :name "adenosine 5'-triphosphate" :uid
    "PCID:5957"))
  ("Which genes are in the MAPK signaling pathway?"
   (:var mv23399 :isa copular-predication-of-pp :item mv23394 :value mv23398 :prep "IN" :predicate
    mv23390)
   (:var mv23394 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv23398 :isa gene :plural t :context mv23386 :has-determiner "WHICH" :raw-text "genes")
   (:var mv23386 :isa signaling-pathway :has-determiner "THE" :modifier mv23393 :raw-text
    "signaling pathway")
   (:var mv23393 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv23390 :isa be :present "PRESENT"))
  ("Which genes are involved in the oncogenic MAPK signaling pathway?"
   (:var mv23412 :isa involve :object mv23411 :|context-OR-theme| mv23401 :present "PRESENT")
   (:var mv23411 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv23401 :isa signaling-pathway :has-determiner "THE" :predication mv23409 :modifier
    mv23410 :raw-text "signaling pathway")
   (:var mv23409 :isa oncogenic)
   (:var mv23410 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv23417 :isa regulate :agent mv23419 :object mv23418 :present "PRESENT" :raw-text
    "regulate")
   (:var mv23419 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv23418 :isa bio-entity :name "x"))
  ("Which kinases negatively regulate x?"
   (:var mv23420 :isa downregulate :agent mv23425 :object mv23424 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv23425 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv23424 :isa bio-entity :name "x"))
  ("Which kinases positively regulate x?"
   (:var mv23426 :isa upregulate :agent mv23431 :object mv23430 :present "PRESENT" :raw-text
    "positively regulate")
   (:var mv23431 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv23430 :isa bio-entity :name "x"))
  ("Which of these are in immune pathways?"
   (:var mv23442 :isa copular-predication-of-pp :item mv23434 :value mv23440 :prep mv23436
    :predicate mv23435)
   (:var mv23434 :isa these :quantifier mv23432 :word "these") (:var mv23432 :isa which)
   (:var mv23440 :isa pathway :plural t :modifier mv23437 :raw-text "pathways")
   (:var mv23437 :isa immune :name "immune") (:var mv23436 :isa in :word "in")
   (:var mv23435 :isa be :present "PRESENT"))
  ("Which of these are in immune system pathways?"
   (:var mv23454 :isa copular-predication-of-pp :item mv23447 :value mv23452 :prep mv23449
    :predicate mv23448)
   (:var mv23447 :isa these :quantifier mv23445 :word "these") (:var mv23445 :isa which)
   (:var mv23452 :isa pathway :plural t :non-cellular-location mv23444 :raw-text "pathways")
   (:var mv23444 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv23449 :isa in :word "in") (:var mv23448 :isa be :present "PRESENT"))
  ("What are the genes STAT3 regulates?"
   (:var mv23458 :isa be :subject mv23457 :predicate mv23464 :present "PRESENT")
   (:var mv23457 :isa what)
   (:var mv23464 :isa gene :plural t :predication mv23462 :has-determiner "THE" :raw-text "genes")
   (:var mv23462 :isa regulate :object mv23464 :agent mv23456 :present "PRESENT" :raw-text
    "regulates")
   (:var mv23456 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of those are in the immune pathway?"
   (:var mv23474 :isa copular-predication-of-pp :item mv23467 :value mv23472 :prep mv23469
    :predicate mv23468)
   (:var mv23467 :isa those :quantifier mv23465 :word "those") (:var mv23465 :isa which)
   (:var mv23472 :isa pathway :has-determiner "THE" :modifier mv23471 :raw-text "pathway")
   (:var mv23471 :isa immune :name "immune") (:var mv23469 :isa in :word "in")
   (:var mv23468 :isa be :present "PRESENT"))
  ("Which pathways involve p53?"
   (:var mv23480 :isa involve :theme mv23481 :object mv23476 :present "PRESENT")
   (:var mv23481 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv23476 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("can you show me the pahtways that involve SRF"
   (:var mv23491 :isa polar-question :statement mv23484)
   (:var mv23484 :isa show :agent mv23483 :|statement-OR-theme| mv23487 :beneficiary mv23485 :modal
    "CAN")
   (:var mv23483 :isa interlocutor :name "hearer")
   (:var mv23487 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv23485 :isa interlocutor :name "speaker"))
  ("Does Selumetinib inhibit MAP2K1?" (:var mv23497 :isa polar-question :statement mv23496)
   (:var mv23496 :isa inhibit :agent mv23494 :object mv23492 :raw-text "inhibit")
   (:var mv23494 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv23492 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's build a model of the KRAS neighborhood."
   (:var mv23507 :isa explicit-suggestion :suggestion mv23499 :marker let-as-directive)
   (:var mv23499 :isa build :artifact mv23501 :present "PRESENT")
   (:var mv23501 :isa model :object mv23505 :has-determiner "A")
   (:var mv23505 :isa neighborhood :has-determiner "THE" :modifier mv23504)
   (:var mv23504 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN"))
  ("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
   (:var mv23525 :isa collection :type know :number 2 :items (mv23523 mv23524))
   (:var mv23523 :isa know :agent mv23508 :statement mv23514 :present "PRESENT")
   (:var mv23508 :isa interlocutor :name "speaker")
   (:var mv23514 :isa bio-activate :agent mv23513 :object mv23515 :present "PRESENT" :raw-text
    "activates")
   (:var mv23513 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv23515 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv23524 :isa collection :raw-text "Raf activates Mek and Mek activates Erk" :type
    bio-activate :number 2 :items (mv23517 mv23521))
   (:var mv23517 :isa bio-activate :agent mv23516 :object mv23518 :present "PRESENT" :raw-text
    "activates")
   (:var mv23516 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv23518 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv23521 :isa bio-activate :agent mv23520 :object mv23522 :present "PRESENT" :raw-text
    "activates")
   (:var mv23520 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv23522 :isa protein-family :raw-text "Erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP2K1 phosphorylates MAPK1."
   (:var mv23528 :isa phosphorylate :agent mv23526 :substrate mv23527 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv23526 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv23527 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1."
   (:var mv23531 :isa dephosphorylate :agent mv23529 :substrate mv23530 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv23529 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv23530 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 always high?"
   (:var mv23542 :isa polar-question :statement mv23541)
   (:var mv23541 :isa copular-predication :item mv23535 :value mv23539 :predicate mv23533)
   (:var mv23535 :isa bio-amount :measured-item mv23532 :has-determiner "THE" :raw-text "amount")
   (:var mv23532 :isa protein :predication mv23537 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv23537 :isa phosphorylate :substrate mv23532 :raw-text "phosphorylated")
   (:var mv23539 :isa high :adverb mv23538) (:var mv23538 :isa always :name "always")
   (:var mv23533 :isa be))
  ("Is the amount of phosphorylated MAPK1 always low?"
   (:var mv23553 :isa polar-question :statement mv23552)
   (:var mv23552 :isa copular-predication :item mv23546 :value mv23550 :predicate mv23544)
   (:var mv23546 :isa bio-amount :measured-item mv23543 :has-determiner "THE" :raw-text "amount")
   (:var mv23543 :isa protein :predication mv23548 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv23548 :isa phosphorylate :substrate mv23543 :raw-text "phosphorylated")
   (:var mv23550 :isa low :adverb mv23549) (:var mv23549 :isa always :name "always")
   (:var mv23544 :isa be))
  ("Does the MAP2K1-MAPK1 complex vanish?" (:var mv23563 :isa polar-question :statement mv23562)
   (:var mv23562 :isa vanish :agent mv23561 :raw-text "vanish")
   (:var mv23561 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv23555
    :component mv23554)
   (:var mv23555 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv23554 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Does the DUSP6-MAPK1 complex vanish?" (:var mv23573 :isa polar-question :statement mv23572)
   (:var mv23572 :isa vanish :agent mv23571 :raw-text "vanish")
   (:var mv23571 :isa bio-complex :has-determiner "THE" :raw-text "DUSP6-MAPK1" :component mv23565
    :component mv23564)
   (:var mv23565 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv23564 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN"))
  ("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv23603 :isa polar-question :statement mv23602)
   (:var mv23602 :isa event-relation :subordinated-event mv23599 :event mv23595)
   (:var mv23599 :isa wh-question :statement mv23596 :wh if)
   (:var mv23596 :isa increase :|agent-OR-cause| mv23583 :|multiplier-OR-cause| mv23594
    :|affected-process-OR-object| mv23587 :raw-text "increase")
   (:var mv23583 :isa interlocutor :name "person-and-machine")
   (:var mv23594 :isa measurement :number mv23591) (:var mv23591 :isa number :value 10)
   (:var mv23587 :isa bio-amount :measured-item mv23575 :has-determiner "THE" :raw-text "amount")
   (:var mv23575 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv23595 :isa vanish :cause mv23578 :raw-text "vanish")
   (:var mv23578 :isa bio-amount :measured-item mv23574 :has-determiner "THE" :raw-text "amount")
   (:var mv23574 :isa protein :predication mv23580 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv23580 :isa phosphorylate :substrate mv23574 :raw-text "phosphorylated"))
  ("Show me the evidence that kras regulates fzd8."
   (:var mv23605 :isa show :|statement-OR-theme| mv23612 :beneficiary mv23606 :present "PRESENT")
   (:var mv23612 :isa evidence :statement mv23611 :has-determiner "THE")
   (:var mv23611 :isa regulate :agent mv23610 :object mv23604 :present "PRESENT" :raw-text
    "regulates")
   (:var mv23610 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv23604 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv23606 :isa interlocutor :name "speaker"))
  ("What increases the amount of fzd8?"
   (:var mv23617 :isa increase :|agent-OR-cause| mv23614 :|affected-process-OR-object| mv23619
    :present "PRESENT" :raw-text "increases")
   (:var mv23614 :isa what)
   (:var mv23619 :isa bio-amount :measured-item mv23613 :has-determiner "THE" :raw-text "amount")
   (:var mv23613 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which kinases are in the MAPK signaling pathway?"
   (:var mv23635 :isa copular-predication-of-pp :item mv23630 :value mv23634 :prep "IN" :predicate
    mv23626)
   (:var mv23630 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv23634 :isa kinase :plural t :in-pathway mv23622 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv23622 :isa signaling-pathway :has-determiner "THE" :modifier mv23629 :raw-text
    "signaling pathway")
   (:var mv23629 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv23626 :isa be :present "PRESENT"))
  ("Does STAT3 regulate the c-fos gene in the liver?"
   (:var mv23648 :isa polar-question :statement mv23646)
   (:var mv23646 :isa regulate :agent mv23637 :object mv23642 :raw-text "regulate")
   (:var mv23637 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23642 :isa gene :organ mv23645 :has-determiner "THE" :expresses mv23638 :raw-text
    "gene")
   (:var mv23645 :isa liver :has-determiner "THE")
   (:var mv23638 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are regulated by smad2?"
   (:var mv23657 :isa regulate :object mv23656 :agent mv23649 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23656 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv23649 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by smad2?"
   (:var mv23666 :isa regulate :|affected-process-OR-object| mv23662 :agent mv23659 :present
    "PRESENT" :raw-text "regulated")
   (:var mv23662 :isa these :quantifier mv23660 :word "these") (:var mv23660 :isa which)
   (:var mv23659 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these also regulate cfos?"
   (:var mv23674 :isa regulate :|agent-OR-cause| mv23671 :object mv23675 :present "PRESENT" :adverb
    mv23672 :raw-text "regulate")
   (:var mv23671 :isa these :quantifier mv23669 :word "these") (:var mv23669 :isa which)
   (:var mv23675 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv23672 :isa also :name "also"))
  ("what transcription factors transcribe SMURF2?"
   (:var mv23681 :isa transcribe :agent mv23682 :object mv23679 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv23682 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv23679 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("what transcription factor transcribes SMURF2?"
   (:var mv23686 :isa transcribe :agent mv23683 :object mv23684 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv23683 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv23684 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which KEGG pathways utilize SRF?"
   (:var mv23691 :isa utilize :participant mv23694 :object mv23692 :present "PRESENT" :raw-text
    "utilize")
   (:var mv23694 :isa pathway :plural t :has-determiner "WHICH" :modifier mv23688 :raw-text
    "pathways")
   (:var mv23688 :isa database :name "KEGG" :uid "KEGG")
   (:var mv23692 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors are in the calcium regulated pathways?"
   (:var mv23712 :isa copular-predication-of-pp :item mv23705 :value mv23711 :prep "IN" :predicate
    mv23698)
   (:var mv23705 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv23711 :isa transcription-factor :plural t :in-pathway mv23707 :has-determiner "WHAT"
    :raw-text "transcription factors")
   (:var mv23707 :isa pathway :plural t :has-determiner "THE" :predication mv23702 :raw-text
    "pathways")
   (:var mv23702 :isa regulate :affected-process mv23707 :agent mv23701 :raw-text "regulated")
   (:var mv23701 :isa calcium :raw-text "calcium") (:var mv23698 :isa be :present "PRESENT"))
  ("What pathways involve the immune system?"
   (:var mv23718 :isa involve :theme mv23720 :object mv23714 :present "PRESENT")
   (:var mv23720 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv23714 :isa bio-organ :has-determiner "THE" :name "immune system" :uid "UBERON:0002405"))
  ("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
   (:var mv23727 :isa involve :theme mv23732 :object mv23730 :present "PRESENT")
   (:var mv23732 :isa pathway :plural t :has-determiner "WHAT" :modifier mv23724 :raw-text
    "pathways")
   (:var mv23724 :isa database :name "KEGG" :uid "KEGG")
   (:var mv23730 :isa collection :raw-text "ERBB2, JUN, and MAPK8" :type protein :number 3 :items
    (mv23721 mv23728 mv23722))
   (:var mv23721 :isa protein :raw-text "ERBB2" :uid "UP:P04626" :name "ERBB2_HUMAN")
   (:var mv23728 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN")
   (:var mv23722 :isa protein :raw-text "MAPK8" :uid "UP:P45983" :name "MK08_HUMAN"))
  ("What pathways are shared by these genes?"
   (:var mv23743 :isa share :object mv23742 :participant mv23744 :present "PRESENT" :raw-text
    "shared")
   (:var mv23742 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv23744 :isa gene :plural t :has-determiner "THESE" :raw-text "genes"))
  ("what genes are regulated by srf?"
   (:var mv23754 :isa regulate :object mv23753 :agent mv23752 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23753 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv23752 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are common pathways for these genes?"
   (:var mv23757 :isa be :subject mv23756 :predicate mv23768 :present "PRESENT")
   (:var mv23756 :isa what)
   (:var mv23768 :isa pathway :plural t :pathwaycomponent mv23766 :predication mv23758 :raw-text
    "pathways")
   (:var mv23766 :isa gene :plural t :has-determiner "THESE" :raw-text "genes")
   (:var mv23758 :isa common))
  ("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
   (:var mv23785 :isa share :object mv23784 :participant mv23786 :present "PRESENT" :raw-text
    "shared")
   (:var mv23784 :isa pathway :plural t :has-determiner "WHICH" :modifier mv23773 :raw-text
    "pathways")
   (:var mv23773 :isa immune :name "immune")
   (:var mv23786 :isa gene :plural t :expresses mv23782 :raw-text "genes")
   (:var mv23782 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv23769 mv23770 mv23771))
   (:var mv23769 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23770 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv23771 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("What MAP kinase phosphatase are regulated by ELK1?"
   (:var mv23795 :isa regulate :object mv23791 :agent mv23789 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23791 :isa phosphatase :has-determiner "WHAT" :enzyme mv23788 :raw-text "phosphatase")
   (:var mv23788 :isa protein-family :raw-text "MAP kinase" :name
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
   (:var mv23789 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What reactome pathways involve immune system?"
   (:var mv23802 :isa involve :theme mv23804 :object mv23797 :present "PRESENT")
   (:var mv23804 :isa pathway :plural t :has-determiner "WHAT" :modifier mv23799 :raw-text
    "pathways")
   (:var mv23799 :isa database :name "Reactome" :uid "Reactome")
   (:var mv23797 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Is stat3 a kinase?" (:var mv23809 :isa polar-question :statement mv23806)
   (:var mv23806 :isa be :subject mv23805 :predicate mv23808)
   (:var mv23805 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23808 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is STAT3 a transcription factor?" (:var mv23814 :isa polar-question :statement mv23812)
   (:var mv23812 :isa be :subject mv23810 :predicate mv23811)
   (:var mv23810 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23811 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Which of these are protein kinases?"
   (:var mv23818 :isa be :subject mv23817 :predicate mv23822 :present "PRESENT")
   (:var mv23817 :isa these :quantifier mv23815 :word "these") (:var mv23815 :isa which)
   (:var mv23822 :isa kinase :plural t :enzyme mv23819 :raw-text "kinases")
   (:var mv23819 :isa protein :raw-text "protein"))
  ("Which of these are tyrosine kinases?"
   (:var mv23829 :isa be :subject mv23828 :predicate mv23825 :present "PRESENT")
   (:var mv23828 :isa these :quantifier mv23826 :word "these") (:var mv23826 :isa which)
   (:var mv23825 :isa protein-family :plural t :raw-text "tyrosine kinases" :uid "NCIT:C17020"
    :name "protein tyrosine kinase"))
  ("Which of these are serine/threonine kinases?"
   (:var mv23834 :isa be :subject mv23833 :predicate mv23840 :present "PRESENT")
   (:var mv23833 :isa these :quantifier mv23831 :word "these") (:var mv23831 :isa which)
   (:var mv23840 :isa kinase :plural t :amino-acid mv23839 :raw-text "kinases")
   (:var mv23839 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv23835 mv23836))
   (:var mv23835 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv23836 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are phosphatases?"
   (:var mv23845 :isa be :subject mv23844 :predicate mv23847 :present "PRESENT")
   (:var mv23844 :isa these :quantifier mv23842 :word "these") (:var mv23842 :isa which)
   (:var mv23847 :isa phosphatase :plural t :raw-text "phosphatases"))
  ("Which of these are proteases?"
   (:var mv23852 :isa be :subject mv23851 :predicate mv23853 :present "PRESENT")
   (:var mv23851 :isa these :quantifier mv23849 :word "these") (:var mv23849 :isa which)
   (:var mv23853 :isa protein :raw-text "proteases" :uid "UP:P63127" :name "VPK9_HUMAN"))
  ("Which of these are receptors?"
   (:var mv23858 :isa be :subject mv23857 :predicate mv23860 :present "PRESENT")
   (:var mv23857 :isa these :quantifier mv23855 :word "these") (:var mv23855 :isa which)
   (:var mv23860 :isa receptor :plural t :raw-text "receptors"))
  ("Which of these are tyrosine kinase receptors?"
   (:var mv23866 :isa be :subject mv23865 :predicate mv23869 :present "PRESENT")
   (:var mv23865 :isa these :quantifier mv23863 :word "these") (:var mv23863 :isa which)
   (:var mv23869 :isa receptor :plural t :modifier mv23862 :raw-text "receptors")
   (:var mv23862 :isa protein-family :raw-text "tyrosine kinase" :name "protein tyrosine kinase"
    :uid "NCIT:C17020"))
  ("Which of these are histone demethylases?"
   (:var mv23876 :isa be :subject mv23875 :predicate mv23872 :present "PRESENT")
   (:var mv23875 :isa these :quantifier mv23873 :word "these") (:var mv23873 :isa which)
   (:var mv23872 :isa protein-family :plural t :raw-text "histone demethylases" :uid "GO:0032452"
    :name "histone demethylase"))
  ("Which of these are histone methylases?"
   (:var mv23883 :isa be :subject mv23882 :predicate mv23879 :present "PRESENT")
   (:var mv23882 :isa these :quantifier mv23880 :word "these") (:var mv23880 :isa which)
   (:var mv23879 :isa protein-family :plural t :raw-text "histone methylases" :uid "GO:0042054"
    :name "histone methyltransferase"))
  ("Which of these are histone methyltransferases?"
   (:var mv23890 :isa be :subject mv23889 :predicate mv23886 :present "PRESENT")
   (:var mv23889 :isa these :quantifier mv23887 :word "these") (:var mv23887 :isa which)
   (:var mv23886 :isa protein-family :plural t :raw-text "histone methyltransferases" :uid
    "GO:0042054" :name "histone methyltransferase"))
  ("Which of these are demethylases?"
   (:var mv23895 :isa be :subject mv23894 :predicate mv23897 :present "PRESENT")
   (:var mv23894 :isa these :quantifier mv23892 :word "these") (:var mv23892 :isa which)
   (:var mv23897 :isa protein-family :plural t :raw-text "demethylases" :uid "GO:0032451" :name
    "demethylase"))
  ("Which of these are methylases?"
   (:var mv23902 :isa be :subject mv23901 :predicate mv23904 :present "PRESENT")
   (:var mv23901 :isa these :quantifier mv23899 :word "these") (:var mv23899 :isa which)
   (:var mv23904 :isa protein-family :plural t :raw-text "methylases" :uid "GO:0008168" :name
    "methyltransferase"))
  ("Which of these are methyltransferases?"
   (:var mv23909 :isa be :subject mv23908 :predicate mv23911 :present "PRESENT")
   (:var mv23908 :isa these :quantifier mv23906 :word "these") (:var mv23906 :isa which)
   (:var mv23911 :isa protein-family :plural t :raw-text "methyltransferases" :uid "GO:0008168"
    :name "methyltransferase"))
  ("Which of these are steroid receptors?"
   (:var mv23916 :isa be :subject mv23915 :predicate mv23920 :present "PRESENT")
   (:var mv23915 :isa these :quantifier mv23913 :word "these") (:var mv23913 :isa which)
   (:var mv23920 :isa receptor :plural t :modifier mv23917 :raw-text "receptors")
   (:var mv23917 :isa molecule :raw-text "steroid" :name "steroid" :uid "CHEBI:35341"))
  ("Which of these are receptor tyrosine kinases?"
   (:var mv23927 :isa be :subject mv23926 :predicate mv23923 :present "PRESENT")
   (:var mv23926 :isa these :quantifier mv23924 :word "these") (:var mv23924 :isa which)
   (:var mv23923 :isa protein-family :plural t :raw-text "receptor tyrosine kinases" :uid
    "NCIT:C17660" :family-members
    ((protein (:name "TKTL1_HUMAN") (:uid "UP:P51854"))
     (protein (:name "NTRK1_HUMAN") (:uid "UP:P04629")))
    :count 2 :name "receptor tyrosine kinase"))
  ("Which of these are transcription factors?"
   (:var mv23934 :isa be :subject mv23933 :predicate mv23930 :present "PRESENT")
   (:var mv23933 :isa these :quantifier mv23931 :word "these") (:var mv23931 :isa which)
   (:var mv23930 :isa transcription-factor :plural t :raw-text "transcription factors"))
  ("Which of these are DNA binding proteins?"
   (:var mv23940 :isa be :subject mv23939 :predicate mv23943 :present "PRESENT")
   (:var mv23939 :isa these :quantifier mv23937 :word "these") (:var mv23937 :isa which)
   (:var mv23943 :isa protein :plural t :modifier mv23936 :raw-text "proteins")
   (:var mv23936 :isa dna-binding :raw-text "DNA binding"))
  ("Which of these are serine/threonine phosphatases?"
   (:var mv23948 :isa be :subject mv23947 :predicate mv23954 :present "PRESENT")
   (:var mv23947 :isa these :quantifier mv23945 :word "these") (:var mv23945 :isa which)
   (:var mv23954 :isa phosphatase :plural t :modifier mv23953 :raw-text "phosphatases")
   (:var mv23953 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv23949 mv23950))
   (:var mv23949 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv23950 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are tyrosine phosphatases?"
   (:var mv23959 :isa be :subject mv23958 :predicate mv23963 :present "PRESENT")
   (:var mv23958 :isa these :quantifier mv23956 :word "these") (:var mv23956 :isa which)
   (:var mv23963 :isa phosphatase :plural t :modifier mv23960 :raw-text "phosphatases")
   (:var mv23960 :isa amino-acid :raw-text "tyrosine" :name "tyrosine"))
  ("What does MEK phosphorylate?"
   (:var mv23968 :isa phosphorylate :|substrate-OR-site-OR-amino-acid| mv23965 :agent mv23967
    :present "PRESENT" :raw-text "phosphorylate")
   (:var mv23965 :isa what)
   (:var mv23967 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("which of these are exclusively expressed in liver?"
   (:var mv23977 :isa gene-transcript-express :object mv23971 :organ mv23976 :present "PRESENT"
    :adverb mv23973 :raw-text "expressed")
   (:var mv23971 :isa these :quantifier mv23969 :word "these") (:var mv23969 :isa which)
   (:var mv23976 :isa liver) (:var mv23973 :isa exclusively :name "exclusively"))
  ("What regulates frizzled8?"
   (:var mv23982 :isa regulate :|agent-OR-cause| mv23981 :object mv23980 :present "PRESENT"
    :raw-text "regulates")
   (:var mv23981 :isa what)
   (:var mv23980 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What increases the amount of myc?"
   (:var mv23986 :isa increase :|agent-OR-cause| mv23983 :|affected-process-OR-object| mv23988
    :present "PRESENT" :raw-text "increases")
   (:var mv23983 :isa what)
   (:var mv23988 :isa bio-amount :measured-item mv23990 :has-determiner "THE" :raw-text "amount")
   (:var mv23990 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What upregulates myc?"
   (:var mv23993 :isa upregulate :|agent-OR-cause| mv23992 :object mv23994 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv23992 :isa what)
   (:var mv23994 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What downregulates myc?"
   (:var mv23996 :isa downregulate :|agent-OR-cause| mv23995 :object mv23997 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv23995 :isa what)
   (:var mv23997 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What decreases the amount of GFAP?"
   (:var mv23999 :isa decrease :|agent-OR-cause| mv23998 :|affected-process-OR-object| mv24001
    :present "PRESENT" :raw-text "decreases")
   (:var mv23998 :isa what)
   (:var mv24001 :isa bio-amount :measured-item mv24003 :has-determiner "THE" :raw-text "amount")
   (:var mv24003 :isa protein :raw-text "GFAP" :uid "UP:P14136" :name "GFAP_HUMAN"))
  ("What regulates GLUL?"
   (:var mv24006 :isa regulate :|agent-OR-cause| mv24005 :object mv24007 :present "PRESENT"
    :raw-text "regulates")
   (:var mv24005 :isa what)
   (:var mv24007 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("What regulates GLUL from the literature?"
   (:var mv24009 :isa regulate :|agent-OR-cause| mv24008 :object mv24010 :present "PRESENT"
    :raw-text "regulates")
   (:var mv24008 :isa what)
   (:var mv24010 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("What regulates GLUL from the GEO RNAi database?"
   (:var mv24017 :isa regulate :|agent-OR-cause| mv24016 :object mv24018 :present "PRESENT"
    :raw-text "regulates")
   (:var mv24016 :isa what)
   (:var mv24018 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("Which kinases regulate the cfos gene?"
   (:var mv24025 :isa regulate :agent mv24029 :object mv24028 :present "PRESENT" :raw-text
    "regulate")
   (:var mv24029 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv24028 :isa gene :has-determiner "THE" :expresses mv24027 :raw-text "gene")
   (:var mv24027 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which kinases negatively regulate the cfos gene?"
   (:var mv24030 :isa downregulate :agent mv24037 :object mv24036 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv24037 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv24036 :isa gene :has-determiner "THE" :expresses mv24035 :raw-text "gene")
   (:var mv24035 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are positive regulators of the cfos gene?"
   (:var mv24041 :isa be :subject mv24040 :predicate mv24047 :present "PRESENT")
   (:var mv24040 :isa what)
   (:var mv24047 :isa positive-regulator :plural t :theme mv24045 :raw-text "positive regulators")
   (:var mv24045 :isa gene :has-determiner "THE" :expresses mv24044 :raw-text "gene")
   (:var mv24044 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What transcribes ZEB1?"
   (:var mv24050 :isa transcribe :|agent-OR-cause| mv24049 :object mv24048 :present "PRESENT"
    :raw-text "transcribes")
   (:var mv24049 :isa what)
   (:var mv24048 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("Show me the evidence that IL6 increases the amount of SOCS1."
   (:var mv24053 :isa show :|statement-OR-theme| mv24065 :beneficiary mv24054 :present "PRESENT")
   (:var mv24065 :isa evidence :statement mv24060 :has-determiner "THE")
   (:var mv24060 :isa increase :agent mv24051 :|affected-process-OR-object| mv24062 :present
    "PRESENT" :raw-text "increases")
   (:var mv24051 :isa protein :raw-text "IL6" :uid "UP:P05231" :name "IL6_HUMAN")
   (:var mv24062 :isa bio-amount :measured-item mv24052 :has-determiner "THE" :raw-text "amount")
   (:var mv24052 :isa protein :raw-text "SOCS1" :uid "UP:O15524" :name "SOCS1_HUMAN")
   (:var mv24054 :isa interlocutor :name "speaker"))
  ("Show me the evidence that KRAS decreasse the amount of FZD8."
   (:var mv24067 :isa show :|statement-OR-theme| mv24070 :beneficiary mv24068 :present "PRESENT")
   (:var mv24070 :isa evidence :has-determiner "THE")
   (:var mv24068 :isa interlocutor :name "speaker"))
  ("What is the evidence that kras regulates frizzled8?"
   (:var mv24080 :isa be :subject mv24079 :predicate mv24086 :present "PRESENT")
   (:var mv24079 :isa what) (:var mv24086 :isa evidence :statement mv24085 :has-determiner "THE")
   (:var mv24085 :isa regulate :agent mv24084 :object mv24078 :present "PRESENT" :raw-text
    "regulates")
   (:var mv24084 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv24078 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that SRF binds the cfos gene?"
   (:var mv24088 :isa be :subject mv24087 :predicate mv24097 :present "PRESENT")
   (:var mv24087 :isa what) (:var mv24097 :isa evidence :statement mv24093 :has-determiner "THE")
   (:var mv24093 :isa binding :binder mv24092 :direct-bindee mv24096 :present "PRESENT" :raw-text
    "binds")
   (:var mv24092 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv24096 :isa gene :has-determiner "THE" :expresses mv24095 :raw-text "gene")
   (:var mv24095 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are exclusively expressed in liver?"
   (:var mv24107 :isa gene-transcript-express :object mv24106 :organ mv24105 :present "PRESENT"
    :adverb mv24102 :raw-text "expressed")
   (:var mv24106 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv24105 :isa liver) (:var mv24102 :isa exclusively :name "exclusively"))
  ("Is stat3 expressed in liver?" (:var mv24115 :isa polar-question :statement mv24111)
   (:var mv24111 :isa gene-transcript-express :object mv24109 :organ mv24113 :past "PAST" :raw-text
    "expressed")
   (:var mv24109 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv24113 :isa liver))
  ("Is stat3 exclusively expressed in liver?" (:var mv24124 :isa polar-question :statement mv24122)
   (:var mv24122 :isa gene-transcript-express :object mv24116 :organ mv24121 :adverb mv24118
    :raw-text "expressed")
   (:var mv24116 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv24121 :isa liver) (:var mv24118 :isa exclusively :name "exclusively"))
  ("How does MAP4K2 affect CXCL8?"
   (:var mv24129 :isa affect :manner mv24127 :agent mv24125 :object mv24126 :present "PRESENT"
    :raw-text "affect")
   (:var mv24127 :isa how)
   (:var mv24125 :isa protein :raw-text "MAP4K2" :uid "UP:Q12851" :name "M4K2_HUMAN")
   (:var mv24126 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("How does ERK affect CXCL8?"
   (:var mv24134 :isa affect :manner mv24131 :agent mv24133 :object mv24130 :present "PRESENT"
    :raw-text "affect")
   (:var mv24131 :isa how)
   (:var mv24133 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24130 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstream regulators of CXCL8 and CXCL10?"
   (:var mv24138 :isa be :subject mv24137 :predicate mv24152 :present "PRESENT")
   (:var mv24137 :isa what)
   (:var mv24152 :isa regulator :plural t :theme mv24147 :has-determiner "THE" :predication mv24140
    :context mv24141 :raw-text "regulators")
   (:var mv24147 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv24135 mv24136))
   (:var mv24135 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24136 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv24140 :isa common) (:var mv24141 :isa upstream-segment :raw-text "upstream"))
  ("What are the paths between MAP3K7 and CXCL8?"
   (:var mv24156 :isa be :subject mv24155 :predicate mv24165 :present "PRESENT")
   (:var mv24155 :isa what)
   (:var mv24165 :isa path :plural t :endpoints mv24162 :has-determiner "THE")
   (:var mv24162 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv24153 mv24154))
   (:var mv24153 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24154 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does MAP3K7 affect IKK?" (:var mv24171 :isa polar-question :statement mv24170)
   (:var mv24170 :isa affect :agent mv24166 :object mv24169 :raw-text "affect")
   (:var mv24166 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24169 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 regulates IKK"
   (:var mv24173 :isa regulate :agent mv24172 :object mv24174 :present "PRESENT" :raw-text
    "regulates")
   (:var mv24172 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24174 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 positively regulates IKK"
   (:var mv24176 :isa upregulate :agent mv24175 :object mv24177 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv24175 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24177 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("NFkappaB positively regulates CXCL8."
   (:var mv24178 :isa upregulate :agent mv24180 :object mv24179 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv24180 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24179 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does NFkappaB regulate the CXCL8 gene?" (:var mv24190 :isa polar-question :statement mv24189)
   (:var mv24189 :isa regulate :agent mv24184 :object mv24188 :raw-text "regulate")
   (:var mv24184 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24188 :isa gene :has-determiner "THE" :expresses mv24182 :raw-text "gene")
   (:var mv24182 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Show me the evidence that NFkappaB regulates CXCL8"
   (:var mv24192 :isa show :|statement-OR-theme| mv24200 :beneficiary mv24193 :present "PRESENT")
   (:var mv24200 :isa evidence :statement mv24199 :has-determiner "THE")
   (:var mv24199 :isa regulate :agent mv24197 :object mv24191 :present "PRESENT" :raw-text
    "regulates")
   (:var mv24197 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24191 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24193 :isa interlocutor :name "speaker"))
  ("Does ERK regulate the CXCL8 gene?" (:var mv24208 :isa polar-question :statement mv24207)
   (:var mv24207 :isa regulate :agent mv24203 :object mv24206 :raw-text "regulate")
   (:var mv24203 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24206 :isa gene :has-determiner "THE" :expresses mv24201 :raw-text "gene")
   (:var mv24201 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("ERK decreases the amount of CXCL8"
   (:var mv24211 :isa decrease :agent mv24210 :|affected-process-OR-object| mv24213 :present
    "PRESENT" :raw-text "decreases")
   (:var mv24210 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24213 :isa bio-amount :measured-item mv24209 :has-determiner "THE" :raw-text "amount")
   (:var mv24209 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does TNG regulate ERK?" (:var mv24221 :isa polar-question :statement mv24220)
   (:var mv24220 :isa regulate :agent mv24219 :object mv24218 :raw-text "regulate")
   (:var mv24219 :isa bio-entity :name "TNG")
   (:var mv24218 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate the ERK gene?" (:var mv24229 :isa polar-question :statement mv24228)
   (:var mv24228 :isa regulate :agent mv24223 :object mv24227 :raw-text "regulate")
   (:var mv24223 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24227 :isa gene :has-determiner "THE" :expresses mv24226 :raw-text "gene")
   (:var mv24226 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNG and ERK?"
   (:var mv24231 :isa be :subject mv24230 :predicate mv24242 :present "PRESENT")
   (:var mv24230 :isa what)
   (:var mv24242 :isa pathway :plural t :pathwaycomponent mv24239 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv24239 :isa collection :raw-text "TNG and ERK" :type protein-family :number 2 :items
    (mv24236 mv24238))
   (:var mv24236 :isa bio-entity :name "TNG")
   (:var mv24238 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNF and ERK?"
   (:var mv24244 :isa be :subject mv24243 :predicate mv24255 :present "PRESENT")
   (:var mv24243 :isa what)
   (:var mv24255 :isa pathway :plural t :pathwaycomponent mv24252 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv24252 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv24249 mv24251))
   (:var mv24249 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24251 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate ERK?" (:var mv24262 :isa polar-question :statement mv24261)
   (:var mv24261 :isa regulate :agent mv24257 :object mv24260 :raw-text "regulate")
   (:var mv24257 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24260 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate the ERK gene?" (:var mv24271 :isa polar-question :statement mv24270)
   (:var mv24270 :isa regulate :agent mv24264 :object mv24269 :raw-text "regulate")
   (:var mv24264 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24269 :isa gene :has-determiner "THE" :expresses mv24268 :raw-text "gene")
   (:var mv24268 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What pathways exist between NFkappaB and ERK?"
   (:var mv24287 :isa copular-predication-of-pp :item mv24282 :value mv24286 :prep "BETWEEN"
    :predicate mv24275)
   (:var mv24282 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv24286 :isa pathway :plural t :pathwaycomponent mv24281 :has-determiner "WHAT" :raw-text
    "pathways")
   (:var mv24281 :isa collection :raw-text "NFkappaB and ERK" :type protein-family :number 2 :items
    (mv24278 mv24280))
   (:var mv24278 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24280 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24275 :isa exist :present "PRESENT"))
  ("How does NFkappaB affect ERK?"
   (:var mv24293 :isa affect :manner mv24289 :agent mv24291 :object mv24294 :present "PRESENT"
    :raw-text "affect")
   (:var mv24289 :isa how)
   (:var mv24291 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24294 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP3K7 activates IKK"
   (:var mv24296 :isa bio-activate :agent mv24295 :object mv24297 :present "PRESENT" :raw-text
    "activates")
   (:var mv24295 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24297 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("IKK activates TNF"
   (:var mv24299 :isa bio-activate :agent mv24298 :object mv24300 :present "PRESENT" :raw-text
    "activates")
   (:var mv24298 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199")
   (:var mv24300 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN"))
  ("What are the paths between TNF and ERK?"
   (:var mv24302 :isa be :subject mv24301 :predicate mv24313 :present "PRESENT")
   (:var mv24301 :isa what)
   (:var mv24313 :isa path :plural t :endpoints mv24310 :has-determiner "THE")
   (:var mv24310 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv24307 mv24309))
   (:var mv24307 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24309 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate ERK?" (:var mv24319 :isa polar-question :statement mv24318)
   (:var mv24318 :isa regulate :agent mv24315 :object mv24317 :raw-text "regulate")
   (:var mv24315 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24317 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("How does MAP3K7 affect CXCL8?"
   (:var mv24324 :isa affect :manner mv24322 :agent mv24320 :object mv24321 :present "PRESENT"
    :raw-text "affect")
   (:var mv24322 :isa how)
   (:var mv24320 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24321 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("TNF activates ERK"
   (:var mv24326 :isa bio-activate :agent mv24325 :object mv24327 :present "PRESENT" :raw-text
    "activates")
   (:var mv24325 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24327 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active ERK decreases the amount of CXCL8"
   (:var mv24331 :isa decrease :agent mv24330 :|affected-process-OR-object| mv24333 :present
    "PRESENT" :raw-text "decreases")
   (:var mv24330 :isa protein-family :predication mv24329 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24329 :isa active)
   (:var mv24333 :isa bio-amount :measured-item mv24328 :has-determiner "THE" :raw-text "amount")
   (:var mv24328 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstreams of CXCL8 and CXCL10?"
   (:var mv24339 :isa be :subject mv24338 :predicate mv24350 :present "PRESENT")
   (:var mv24338 :isa what)
   (:var mv24350 :isa upstream-segment :plural t :pathwaycomponent mv24346 :has-determiner "THE"
    :predication mv24341 :raw-text "upstreams")
   (:var mv24346 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv24336 mv24337))
   (:var mv24336 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24337 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv24341 :isa common))
  ("How does CXCL8 affect CXCL8?"
   (:var mv24355 :isa affect :manner mv24353 :agent mv24351 :object mv24352 :present "PRESENT"
    :raw-text "affect")
   (:var mv24353 :isa how)
   (:var mv24351 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24352 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does CXCL8 regulate CXCL10?" (:var mv24361 :isa polar-question :statement mv24360)
   (:var mv24360 :isa regulate :agent mv24356 :object mv24357 :raw-text "regulate")
   (:var mv24356 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24357 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does CXCL8 regulate the CXCL10 gene?" (:var mv24369 :isa polar-question :statement mv24368)
   (:var mv24368 :isa regulate :agent mv24362 :object mv24367 :raw-text "regulate")
   (:var mv24362 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24367 :isa gene :has-determiner "THE" :expresses mv24363 :raw-text "gene")
   (:var mv24363 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("How does MAP3k7 affect CXCL10?"
   (:var mv24374 :isa affect :manner mv24372 :agent mv24370 :object mv24371 :present "PRESENT"
    :raw-text "affect")
   (:var mv24372 :isa how)
   (:var mv24370 :isa protein :raw-text "MAP3k7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24371 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What are the paths between TNF and CXCL10?"
   (:var mv24377 :isa be :subject mv24376 :predicate mv24387 :present "PRESENT")
   (:var mv24376 :isa what)
   (:var mv24387 :isa path :plural t :endpoints mv24384 :has-determiner "THE")
   (:var mv24384 :isa collection :raw-text "TNF and CXCL10" :type protein :number 2 :items
    (mv24382 mv24375))
   (:var mv24382 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24375 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does ERK regulate the expression of CXCL10?"
   (:var mv24397 :isa polar-question :statement mv24395)
   (:var mv24395 :isa regulate :agent mv24390 :affected-process mv24393 :raw-text "regulate")
   (:var mv24390 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24393 :isa gene-transcript-express :object mv24388 :has-determiner "THE" :raw-text
    "expression")
   (:var mv24388 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the expression of CXCL10"
   (:var mv24401 :isa decrease :agent mv24400 :affected-process mv24403 :present "PRESENT"
    :raw-text "decreases")
   (:var mv24400 :isa protein-family :predication mv24399 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24399 :isa active)
   (:var mv24403 :isa gene-transcript-express :object mv24398 :has-determiner "THE" :raw-text
    "expression")
   (:var mv24398 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the amount of CXCL8"
   (:var mv24409 :isa decrease :agent mv24408 :|affected-process-OR-object| mv24411 :present
    "PRESENT" :raw-text "decreases")
   (:var mv24408 :isa protein-family :predication mv24407 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24407 :isa active)
   (:var mv24411 :isa bio-amount :measured-item mv24406 :has-determiner "THE" :raw-text "amount")
   (:var mv24406 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Active ERK decreases the amount of CXCL10"
   (:var mv24417 :isa decrease :agent mv24416 :|affected-process-OR-object| mv24419 :present
    "PRESENT" :raw-text "decreases")
   (:var mv24416 :isa protein-family :predication mv24415 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24415 :isa active)
   (:var mv24419 :isa bio-amount :measured-item mv24414 :has-determiner "THE" :raw-text "amount")
   (:var mv24414 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("NG25 inhibits the activity of MAP3K7"
   (:var mv24424 :isa inhibit :agent mv24422 :affected-process mv24426 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv24422 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv24426 :isa bio-activity :participant mv24423 :has-determiner "THE" :raw-text "activity")
   (:var mv24423 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Does NG25 decrease the CXCL8 in the model?"
   (:var mv24440 :isa polar-question :statement mv24438)
   (:var mv24438 :isa decrease :agent mv24429 :object mv24430 :raw-text "decrease")
   (:var mv24429 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv24430 :isa protein :has-determiner "THE" :raw-text "CXCL8" :uid "UP:P10145" :name
    "IL8_HUMAN"))
  ("Does NG25 decrease CXCL10 in the model?" (:var mv24451 :isa polar-question :statement mv24449)
   (:var mv24449 :isa decrease :agent mv24441 :object mv24442 :raw-text "decrease")
   (:var mv24441 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv24442 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("TNF activates NFkappaB"
   (:var mv24453 :isa bio-activate :agent mv24452 :object mv24454 :present "PRESENT" :raw-text
    "activates")
   (:var mv24452 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24454 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB"))
  ("I want to find out how tofacitinib decreases IL2"
   (:var mv24460 :isa want :agent mv24457 :theme mv24471 :present "PRESENT")
   (:var mv24457 :isa interlocutor :name "speaker")
   (:var mv24471 :isa find-out :agent mv24457 :statement mv24468)
   (:var mv24468 :isa wh-question :statement mv24467 :var nil :wh how)
   (:var mv24467 :isa decrease :agent mv24466 :object mv24456 :present "PRESENT" :raw-text
    "decreases")
   (:var mv24466 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv24456 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in BT20 cells"
   (:var mv24476 :isa want :agent mv24473 :theme mv24493 :present "PRESENT")
   (:var mv24473 :isa interlocutor :name "speaker")
   (:var mv24493 :isa find-out :agent mv24473 :statement mv24490)
   (:var mv24490 :isa wh-question :statement mv24483 :var nil :wh how)
   (:var mv24483 :isa decrease :agent mv24482 :object mv24484 :present "PRESENT" :raw-text
    "decreases")
   (:var mv24482 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv24484 :isa protein :cell-type mv24488 :raw-text "FOS" :uid "UP:P01100" :name
    "FOS_HUMAN")
   (:var mv24488 :isa cell-type :plural t :cell-line mv24472)
   (:var mv24472 :isa cell-line :name "BT-20" :uid "CVCL:0178"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells"
   (:var mv24499 :isa want :agent mv24496 :theme mv24515 :present "PRESENT")
   (:var mv24496 :isa interlocutor :name "speaker")
   (:var mv24515 :isa find-out :agent mv24496 :statement mv24512)
   (:var mv24512 :isa wh-question :statement mv24505 :var nil :wh how)
   (:var mv24505 :isa bio-activate :agent mv24494 :object mv24506 :present "PRESENT" :raw-text
    "activates")
   (:var mv24494 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv24506 :isa protein :cell-type mv24510 :raw-text "JUN" :uid "UP:P05412" :name
    "JUN_HUMAN")
   (:var mv24510 :isa cell-type :plural t :cell-line mv24495)
   (:var mv24495 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Does MEK phosphorylate ERK?" (:var mv24521 :isa polar-question :statement mv24520)
   (:var mv24520 :isa phosphorylate :agent mv24517 :substrate mv24519 :raw-text "phosphorylate")
   (:var mv24517 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv24519 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does STAT3 inhibit the c-fos gene?" (:var mv24529 :isa polar-question :statement mv24528)
   (:var mv24528 :isa inhibit :agent mv24522 :object mv24527 :raw-text "inhibit")
   (:var mv24522 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv24527 :isa gene :has-determiner "THE" :expresses mv24523 :raw-text "gene")
   (:var mv24523 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 stimulate the c-fos gene?" (:var mv24537 :isa polar-question :statement mv24536)
   (:var mv24536 :isa stimulate :agent mv24530 :object mv24535 :raw-text "stimulate")
   (:var mv24530 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv24535 :isa gene :has-determiner "THE" :expresses mv24531 :raw-text "gene")
   (:var mv24531 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
   (:var mv24542 :isa want :agent mv24539 :theme mv24561 :present "PRESENT")
   (:var mv24539 :isa interlocutor :name "speaker")
   (:var mv24561 :isa find-out :agent mv24539 :statement mv24558)
   (:var mv24558 :isa wh-question :statement mv24549 :var nil :wh how)
   (:var mv24549 :isa decrease :agent mv24548 :object mv24550 :present "PRESENT" :raw-text
    "decreases")
   (:var mv24548 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv24550 :isa protein :cell-type mv24556 :raw-text "FOS" :uid "UP:P01100" :name
    "FOS_HUMAN")
   (:var mv24556 :isa cell-type :plural t :cell-line mv24538 :associated-disease mv24552)
   (:var mv24538 :isa cell-line :name "SK-MEL-133" :uid "CVCL:6082") (:var mv24552 :isa melanoma))
  ("Is ERK a transcription factor?" (:var mv24566 :isa polar-question :statement mv24563)
   (:var mv24563 :isa be :subject mv24564 :predicate mv24562)
   (:var mv24564 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24562 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("List all the genes regulated by elk1 and srf."
   (:var mv24568 :isa list :theme mv24579 :present "PRESENT")
   (:var mv24579 :isa gene :plural t :predication mv24573 :quantifier mv24569 :has-determiner "THE"
    :raw-text "genes")
   (:var mv24573 :isa regulate :object mv24579 :agent mv24577 :past "PAST" :raw-text "regulated")
   (:var mv24577 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv24567 mv24576))
   (:var mv24567 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv24576 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv24569 :isa all :word "all"))
  ("List some of the genes regulated by elk1 and srf."
   (:var mv24583 :isa list :theme mv24597 :present "PRESENT")
   (:var mv24597 :isa gene :plural t :predication mv24589 :quantifier mv24584 :has-determiner "THE"
    :raw-text "genes")
   (:var mv24589 :isa regulate :object mv24597 :agent mv24593 :past "PAST" :raw-text "regulated")
   (:var mv24593 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv24582 mv24592))
   (:var mv24582 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv24592 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv24584 :isa some :word "some"))
  ("Show me the  mutations of TP53 and BRAF in ovarian cancer."
   (:var mv24602 :isa show :|statement-OR-theme| mv24616 :beneficiary mv24603 :present "PRESENT")
   (:var mv24616 :isa mutation :plural t :context mv24601 :object mv24611 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv24601 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv24611 :isa collection :raw-text "TP53 and BRAF" :type protein :number 2 :items
    (mv24600 mv24609))
   (:var mv24600 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv24609 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv24603 :isa interlocutor :name "speaker"))
  ("What are the mutations of TP53 and BRAF in ovarian cancer?"
   (:var mv24620 :isa be :subject mv24619 :predicate mv24633 :present "PRESENT")
   (:var mv24619 :isa what)
   (:var mv24633 :isa mutation :plural t :context mv24618 :object mv24628 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv24618 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv24628 :isa collection :raw-text "TP53 and BRAF" :type protein :number 2 :items
    (mv24617 mv24626))
   (:var mv24617 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv24626 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 for breast cancer?"
   (:var mv24638 :isa be :subject mv24637 :predicate mv24648 :present "PRESENT")
   (:var mv24637 :isa what)
   (:var mv24648 :isa gene :disease mv24636 :has-determiner "THE" :predication mv24634 :raw-text
    "genes")
   (:var mv24636 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv24634 :isa mutual-exclusivity :alternative mv24635)
   (:var mv24635 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 in breast cancer?"
   (:var mv24653 :isa be :subject mv24652 :predicate mv24663 :present "PRESENT")
   (:var mv24652 :isa what)
   (:var mv24663 :isa gene :disease mv24651 :has-determiner "THE" :predication mv24649 :raw-text
    "genes")
   (:var mv24651 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv24649 :isa mutual-exclusivity :alternative mv24650)
   (:var mv24650 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN"))
  ("What downregulates it?"
   (:var mv24665 :isa downregulate :|agent-OR-cause| mv24664 :|affected-process-OR-object| mv24666
    :present "PRESENT" :raw-text "downregulates")
   (:var mv24664 :isa what) (:var mv24666 :isa pronoun/inanimate :word "it"))
  ("What genes have strong evidence of being regulated by mir-122-5p?"
   (:var mv24671 :isa have :possessor mv24678 :thing-possessed mv24673 :present "PRESENT")
   (:var mv24678 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv24673 :isa evidence :fact mv24676 :predication mv24672)
   (:var mv24676 :isa regulate :agent mv24667 :progressive mv24675 :raw-text "regulated")
   (:var mv24667 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv24675 :isa be) (:var mv24672 :isa strong))
  ("What increases the amount of myc"
   (:var mv24684 :isa increase :|agent-OR-cause| mv24681 :|affected-process-OR-object| mv24686
    :present "PRESENT" :raw-text "increases")
   (:var mv24681 :isa what)
   (:var mv24686 :isa bio-amount :measured-item mv24688 :has-determiner "THE" :raw-text "amount")
   (:var mv24688 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What inhibits fzd8?"
   (:var mv24692 :isa inhibit :|agent-OR-cause| mv24691 :object mv24690 :present "PRESENT"
    :raw-text "inhibits")
   (:var mv24691 :isa what)
   (:var mv24690 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
   (:var mv24696 :isa be :subject mv24695 :predicate mv24708 :present "PRESENT")
   (:var mv24695 :isa what) (:var mv24708 :isa quality-predicate :item mv24706 :attribute mv24702)
   (:var mv24706 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv24693 mv24704 mv24694))
   (:var mv24693 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv24704 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv24694 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv24702 :isa location-of :has-determiner "THE" :predication mv24700 :modifier mv24701)
   (:var mv24700 :isa likely :comparative mv24698)
   (:var mv24698 :isa superlative-quantifier :name "most")
   (:var mv24701 :isa cellular :name "cellular"))
  ("What is the most likely cellular location of AKT1?"
   (:var mv24711 :isa be :subject mv24710 :predicate mv24720 :present "PRESENT")
   (:var mv24710 :isa what) (:var mv24720 :isa quality-predicate :item mv24709 :attribute mv24717)
   (:var mv24709 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv24717 :isa location-of :has-determiner "THE" :predication mv24715 :modifier mv24716)
   (:var mv24715 :isa likely :comparative mv24713)
   (:var mv24713 :isa superlative-quantifier :name "most")
   (:var mv24716 :isa cellular :name "cellular"))
  ("What is the mutation significance of TP53 in lung cancer?"
   (:var mv24724 :isa be :subject mv24723 :predicate mv24727 :present "PRESENT")
   (:var mv24723 :isa what)
   (:var mv24727 :isa significance :context mv24722 :agent mv24721 :has-determiner "THE" :modifier
    mv24726)
   (:var mv24722 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv24721 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv24726 :isa mutation :raw-text "mutation"))
  ("Which of those are regulated by tp53?"
   (:var mv24739 :isa regulate :|affected-process-OR-object| mv24735 :agent mv24732 :present
    "PRESENT" :raw-text "regulated")
   (:var mv24735 :isa those :quantifier mv24733 :word "those") (:var mv24733 :isa which)
   (:var mv24732 :isa protein :raw-text "tp53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("Which of those genes are in the MAPK signaling pathway?"
   (:var mv24759 :isa copular-predication-of-pp :item mv24756 :value mv24758 :prep "IN" :predicate
    mv24748)
   (:var mv24756 :isa gene :plural t :quantifier mv24743 :has-determiner "THOSE" :raw-text "genes")
   (:var mv24743 :isa which)
   (:var mv24758 :isa gene :plural t :context mv24742 :quantifier mv24743 :has-determiner "THOSE"
    :raw-text "genes")
   (:var mv24742 :isa signaling-pathway :has-determiner "THE" :modifier mv24751 :raw-text
    "signaling pathway")
   (:var mv24751 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv24748 :isa be :present "PRESENT"))
  ("Which of these are in the il-12 pathway?"
   (:var mv24770 :isa copular-predication-of-pp :item mv24764 :value mv24768 :prep mv24766
    :predicate mv24765)
   (:var mv24764 :isa these :quantifier mv24762 :word "these") (:var mv24762 :isa which)
   (:var mv24768 :isa pathway :has-determiner "THE" :modifier mv24761 :raw-text "pathway")
   (:var mv24761 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv24766 :isa in :word "in") (:var mv24765 :isa be :present "PRESENT"))
  ("Which of them are expressed in liver?"
   (:var mv24779 :isa gene-transcript-express :object mv24774 :organ mv24778 :present "PRESENT"
    :raw-text "expressed")
   (:var mv24774 :isa pronoun/plural :quantifier mv24772 :word "them") (:var mv24772 :isa which)
   (:var mv24778 :isa liver))
  ("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
   (:var mv24794 :isa regulate :|affected-process-OR-object| mv24786 :agent mv24793 :present
    "PRESENT" :superlative mv24788 :adverb mv24789 :raw-text "regulated")
   (:var mv24786 :isa pronoun/plural :quantifier mv24784 :word "them") (:var mv24784 :isa which)
   (:var mv24793 :isa collection :raw-text "miR-335-5p and miR-155-5p" :type micro-rna :number 2
    :items (mv24782 mv24783))
   (:var mv24782 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv24783 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv24788 :isa superlative-quantifier :name "most")
   (:var mv24789 :isa frequently :name "frequently"))
  ("What transcription factors target SMURF2?"
   (:var mv24802 :isa target :agent mv24803 :object mv24799 :present "PRESENT" :raw-text "target")
   (:var mv24803 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv24799 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which of those target frizzled8?"
   (:var mv24809 :isa target :|agent-OR-cause| mv24807 :object mv24804 :present "PRESENT" :raw-text
    "target")
   (:var mv24807 :isa those :quantifier mv24805 :word "those") (:var mv24805 :isa which)
   (:var mv24804 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is Selumetinib?"
   (:var mv24812 :isa be :subject mv24811 :predicate mv24813 :present "PRESENT")
   (:var mv24811 :isa what)
   (:var mv24813 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What is MAPK3?" (:var mv24816 :isa be :subject mv24815 :predicate mv24814 :present "PRESENT")
   (:var mv24815 :isa what)
   (:var mv24814 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does it do?" (:var mv24822 :isa do :patient mv24817 :present "PRESENT")
   (:var mv24817 :isa what))
  ("Is there an inhibitor of ERK1?" (:var mv24832 :isa polar-question :statement mv24830)
   (:var mv24830 :isa there-exists :value mv24828 :predicate mv24825)
   (:var mv24828 :isa inhibitor :protein mv24823 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv24823 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv24825 :isa syntactic-there))
  ("Name some drugs that inhibit AKT1."
   (:var mv24834 :isa name-something :patient mv24843 :present "PRESENT")
   (:var mv24843 :isa drug :plural t :predication mv24841 :quantifier mv24837 :raw-text "drugs")
   (:var mv24841 :isa inhibit :agent mv24843 :that-rel t :object mv24833 :present "PRESENT"
    :raw-text "inhibit")
   (:var mv24833 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv24837 :isa some :word "some"))
  ("Are there any Map2K1 inhibitors?" (:var mv24854 :isa polar-question :statement mv24851)
   (:var mv24851 :isa there-exists :value mv24853 :predicate mv24846)
   (:var mv24853 :isa inhibitor :plural t :quantifier mv24848 :protein mv24844 :raw-text
    "inhibitors")
   (:var mv24848 :isa any :word "any")
   (:var mv24844 :isa protein :raw-text "Map2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv24846 :isa syntactic-there))
  ("Are there targets of Selumetinib?" (:var mv24866 :isa polar-question :statement mv24863)
   (:var mv24863 :isa there-exists :value mv24865 :predicate mv24856)
   (:var mv24865 :isa target-protein :plural t :agent mv24862 :raw-text "targets")
   (:var mv24862 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv24856 :isa syntactic-there))
  ("What does Selumetinib inhibit?"
   (:var mv24870 :isa inhibit :|affected-process-OR-object| mv24867 :agent mv24869 :present
    "PRESENT" :raw-text "inhibit")
   (:var mv24867 :isa what)
   (:var mv24869 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What does Selumetinib target?"
   (:var mv24875 :isa target :|affected-process-OR-object| mv24871 :agent mv24873 :present
    "PRESENT" :raw-text "target")
   (:var mv24871 :isa what)
   (:var mv24873 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Does Vemurafenib target BRAF?" (:var mv24882 :isa polar-question :statement mv24881)
   (:var mv24881 :isa target :agent mv24877 :object mv24880 :raw-text "target")
   (:var mv24877 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv24880 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some targets for treating pancreatic cancer?"
   (:var mv24885 :isa be :subject mv24884 :predicate mv24894 :present "PRESENT")
   (:var mv24884 :isa what)
   (:var mv24894 :isa target-protein :plural t :quantifier mv24886 :treatment mv24891 :raw-text
    "targets")
   (:var mv24886 :isa some :word "some")
   (:var mv24891 :isa treatment :disease mv24883 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv24883 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some targets for pancreatic cancer?"
   (:var mv24897 :isa be :subject mv24896 :predicate mv24905 :present "PRESENT")
   (:var mv24896 :isa what)
   (:var mv24905 :isa target-protein :plural t :quantifier mv24898 :disease mv24895 :raw-text
    "targets")
   (:var mv24898 :isa some :word "some")
   (:var mv24895 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What targets could lead to the development of pancreatic cancer?"
   (:var mv24912 :isa lead :agent mv24917 :theme mv24915 :modal mv24911 :raw-text "lead")
   (:var mv24917 :isa target-protein :plural t :has-determiner "WHAT" :raw-text "targets")
   (:var mv24915 :isa development :disease mv24906 :has-determiner "THE" :raw-text "development")
   (:var mv24906 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv24911 :isa could))
  ("What proteins could lead to the development of pancreatic cancer?"
   (:var mv24925 :isa lead :agent mv24930 :theme mv24928 :modal mv24924 :raw-text "lead")
   (:var mv24930 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv24928 :isa development :disease mv24920 :has-determiner "THE" :raw-text "development")
   (:var mv24920 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv24924 :isa could))
  ("What mutated genes could lead to pancreatic cancer?"
   (:var mv24939 :isa lead :agent mv24942 :theme mv24933 :modal mv24938 :raw-text "lead")
   (:var mv24942 :isa gene :plural t :has-determiner "WHAT" :predication mv24935 :raw-text "genes")
   (:var mv24935 :isa mutation :object mv24942 :raw-text "mutated")
   (:var mv24933 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv24938 :isa could))
  ("What is the top gene mutation that leads to pancreatic cancer?"
   (:var mv24946 :isa be :subject mv24945 :predicate mv24950 :present "PRESENT")
   (:var mv24945 :isa what)
   (:var mv24950 :isa mutation :predication mv24952 :has-determiner "THE" :modifier mv24948
    :|agent-OR-object| mv24949 :raw-text "mutation")
   (:var mv24952 :isa lead :agent mv24950 :that-rel t :theme mv24944 :present "PRESENT" :raw-text
    "leads")
   (:var mv24944 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv24948 :isa top-qua-location) (:var mv24949 :isa gene :raw-text "gene"))
  ("I would like to find a treatement for pancreatic cancer."
   (:var mv24961 :isa like :agent mv24956 :modal mv24959)
   (:var mv24956 :isa interlocutor :name "speaker") (:var mv24959 :isa would))
  ("What drug could I use to treat pancreatic cancer?"
   (:var mv24982 :isa bio-use :patient mv24972 :modal mv24973 :agent mv24974 :theme mv24981
    :present "PRESENT" :raw-text "use")
   (:var mv24972 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv24973 :isa could)
   (:var mv24974 :isa interlocutor :name "speaker")
   (:var mv24981 :isa treatment :disease mv24970 :raw-text "treat")
   (:var mv24970 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some drugs for treating pancreatic cancer?"
   (:var mv24985 :isa be :subject mv24984 :predicate mv24993 :present "PRESENT")
   (:var mv24984 :isa what)
   (:var mv24993 :isa drug :plural t :treatment mv24990 :quantifier mv24986 :raw-text "drugs")
   (:var mv24990 :isa treatment :disease mv24983 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv24983 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv24986 :isa some :word "some"))
  ("I'd like to find a treatement for pancreatic cancer."
   (:var mv25000 :isa like :agent mv24996 :modal mv25007)
   (:var mv24996 :isa interlocutor :name "speaker") (:var mv25007 :isa would))
  ("How can i treat pancreatic cancer?" (:var mv25011 :isa how))
  ("Does MEK act on ERK?" (:var mv25021 :isa polar-question :statement mv25019)
   (:var mv25019 :isa bio-act :agent mv25015 :acted-on mv25018 :raw-text "act")
   (:var mv25015 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25018 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Let's build a model"
   (:var mv25026 :isa explicit-suggestion :suggestion mv25023 :marker let-as-directive)
   (:var mv25023 :isa build :artifact mv25025 :present "PRESENT")
   (:var mv25025 :isa model :has-determiner "A"))
  ("Mek activates MAPK3"
   (:var mv25029 :isa bio-activate :agent mv25028 :object mv25027 :present "PRESENT" :raw-text
    "activates")
   (:var mv25028 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25027 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("HRAS activates RAF."
   (:var mv25031 :isa bio-activate :agent mv25030 :object mv25032 :present "PRESENT" :raw-text
    "activates")
   (:var mv25030 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv25032 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("Remove the fact that hras activates ras"
   (:var mv25033 :isa remove :object mv25040 :present "PRESENT" :raw-text "Remove")
   (:var mv25040 :isa fact :statement mv25038 :has-determiner "THE")
   (:var mv25038 :isa bio-activate :agent mv25037 :object mv25039 :present "PRESENT" :raw-text
    "activates")
   (:var mv25037 :isa protein :raw-text "hras" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv25039 :isa protein-family :raw-text "ras" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("Can you tell me what is in the model?" (:var mv25052 :isa polar-question :statement mv25043)
   (:var mv25043 :isa tell :agent mv25042 :theme mv25051 :theme mv25044 :modal "CAN")
   (:var mv25042 :isa interlocutor :name "hearer")
   (:var mv25051 :isa copular-predication-of-pp :item mv25045 :value mv25049 :prep mv25047
    :predicate mv25046)
   (:var mv25045 :isa what) (:var mv25049 :isa model :has-determiner "THE")
   (:var mv25047 :isa in :word "in") (:var mv25046 :isa be :modal "CAN")
   (:var mv25044 :isa interlocutor :name "speaker"))
  ("Summarize the model." (:var mv25056 :isa summarize :statement mv25055 :present "PRESENT")
   (:var mv25055 :isa model :has-determiner "THE"))
  ("Summarize the current model."
   (:var mv25061 :isa summarize :statement mv25060 :present "PRESENT")
   (:var mv25060 :isa model :has-determiner "THE" :predication mv25059)
   (:var mv25059 :isa current))
  ("What phosphorylates BRAF?"
   (:var mv25063 :isa phosphorylate :|agent-OR-cause| mv25062 :substrate mv25064 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv25062 :isa what)
   (:var mv25064 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Vemurafenib binds BRAF."
   (:var mv25066 :isa binding :binder mv25065 :direct-bindee mv25067 :present "PRESENT" :raw-text
    "binds")
   (:var mv25065 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv25067 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Phosphorylated MAP2K1 is activated."
   (:var mv25072 :isa bio-activate :object mv25068 :present "PRESENT" :raw-text "activated")
   (:var mv25068 :isa protein :predication mv25069 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv25069 :isa phosphorylate :substrate mv25068 :raw-text "Phosphorylated"))
  ("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
   (:var mv25076 :isa dephosphorylate :agent mv25073 :substrate mv25074 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv25073 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv25074 :isa protein :predication mv25082 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv25082 :isa binding :direct-bindee mv25074 :that-rel t :bindee mv25075 :present "PRESENT"
    :negation mv25079 :raw-text "bound")
   (:var mv25075 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv25079 :isa not :word "not"))
  ("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
   (:var mv25093 :isa phosphorylate :agent mv25084 :substrate mv25086 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv25084 :isa protein :predication mv25094 :predication mv25087 :raw-text "MAP2K1" :uid
    "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv25094 :isa binding :direct-bindee mv25084 :that-rel t :bindee mv25085 :present "PRESENT"
    :negation mv25090 :raw-text "bound")
   (:var mv25085 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv25090 :isa not :word "not") (:var mv25087 :isa active)
   (:var mv25086 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Phosphorylated ERK2 is activated."
   (:var mv25100 :isa bio-activate :object mv25096 :present "PRESENT" :raw-text "activated")
   (:var mv25096 :isa protein :predication mv25097 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv25097 :isa phosphorylate :substrate mv25096 :raw-text "Phosphorylated"))
  ("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
   (:var mv25104 :isa dephosphorylate :agent mv25101 :substrate mv25102 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv25101 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv25102 :isa protein :predication mv25110 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv25110 :isa binding :direct-bindee mv25102 :that-rel t :bindee mv25103 :present "PRESENT"
    :negation mv25107 :raw-text "bound")
   (:var mv25103 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv25107 :isa not :word "not"))
  ("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
   (:var mv25125 :isa phosphorylate :agent mv25113 :substrate mv25112 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv25113 :isa protein :predication mv25128 :mutation mv25127 :raw-text "BRAF" :uid
    "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25128 :isa binding :direct-bindee mv25113 :that-rel t :bindee mv25124 :present "PRESENT"
    :negation mv25121 :raw-text "bound")
   (:var mv25124 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv25121 :isa not :word "not")
   (:var mv25127 :isa point-mutated-protein :position mv25116 :new-amino-acid mv25118
    :original-amino-acid mv25114)
   (:var mv25116 :isa number :value 600)
   (:var mv25118 :isa amino-acid :name "glutamic acid" :letter "E")
   (:var mv25114 :isa amino-acid :name "valine" :letter "V")
   (:var mv25112 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Phosphorylated MAPK1 is active."
   (:var mv25134 :isa copular-predication :item mv25130 :value mv25133 :predicate mv25132)
   (:var mv25130 :isa protein :predication mv25131 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv25131 :isa phosphorylate :substrate mv25130 :raw-text "Phosphorylated")
   (:var mv25133 :isa active) (:var mv25132 :isa be :present "PRESENT"))
  ("PDK1 phosphorylates AKT1."
   (:var mv25137 :isa phosphorylate :agent mv25135 :substrate mv25136 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv25135 :isa protein :raw-text "PDK1" :uid "UP:O15530" :name "PDPK1_HUMAN")
   (:var mv25136 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated AKT1 to the top"
   (:var mv25147 :isa explicit-suggestion :suggestion mv25141 :marker let-as-directive)
   (:var mv25141 :isa move-to :goal mv25145 :theme mv25139 :present "PRESENT")
   (:var mv25145 :isa top-qua-location :has-determiner "THE")
   (:var mv25139 :isa protein :predication mv25142 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv25142 :isa phosphorylate :substrate mv25139 :raw-text "phosphorylated"))
  ("Let's move phosphorylated AKT1 on top"
   (:var mv25156 :isa explicit-suggestion :suggestion mv25151 :marker let-as-directive)
   (:var mv25151 :isa move-to :at-relative-location mv25154 :theme mv25149 :present "PRESENT")
   (:var mv25154 :isa top-qua-location)
   (:var mv25149 :isa protein :predication mv25152 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv25152 :isa phosphorylate :substrate mv25149 :raw-text "phosphorylated"))
  ("show AKT1 on top"
   (:var mv25158 :isa show :at-relative-location mv25160 :|statement-OR-theme| mv25157 :present
    "PRESENT")
   (:var mv25160 :isa top-qua-location)
   (:var mv25157 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's highlight upstream of AKT1"
   (:var mv25169 :isa explicit-suggestion :suggestion mv25164 :marker let-as-directive)
   (:var mv25164 :isa highlight :theme mv25165 :present "PRESENT")
   (:var mv25165 :isa upstream-segment :pathwaycomponent mv25163 :raw-text "upstream")
   (:var mv25163 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move nucleus elements to the top"
   (:var mv25181 :isa explicit-suggestion :suggestion mv25172 :marker let-as-directive)
   (:var mv25172 :isa move-to :goal mv25178 :theme mv25179 :present "PRESENT")
   (:var mv25178 :isa top-qua-location :has-determiner "THE")
   (:var mv25179 :isa element :plural t :modifier mv25173)
   (:var mv25173 :isa nucleus :raw-text "nucleus"))
  ("What are the common downstreams of AKT1 and  BRAF?"
   (:var mv25184 :isa be :subject mv25183 :predicate mv25196 :present "PRESENT")
   (:var mv25183 :isa what)
   (:var mv25196 :isa downstream-segment :plural t :pathwaycomponent mv25192 :has-determiner "THE"
    :predication mv25186 :raw-text "downstreams")
   (:var mv25192 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv25182 mv25191))
   (:var mv25182 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv25191 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25186 :isa common))
  ("Are there common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv25213 :isa polar-question :statement mv25208)
   (:var mv25208 :isa there-exists :value mv25212 :predicate mv25200)
   (:var mv25212 :isa upstream-segment :plural t :pathwaycomponent mv25209 :predication mv25202
    :raw-text "upstreams")
   (:var mv25209 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv25197 mv25206 mv25198))
   (:var mv25197 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv25206 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25198 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv25202 :isa common) (:var mv25200 :isa syntactic-there))
  ("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
   (:var mv25218 :isa be :subject mv25217 :predicate mv25232 :present "PRESENT")
   (:var mv25217 :isa what)
   (:var mv25232 :isa regulator :plural t :theme mv25227 :has-determiner "THE" :predication mv25220
    :context mv25221 :raw-text "regulators")
   (:var mv25227 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv25214 mv25215 mv25216))
   (:var mv25214 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv25215 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv25216 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv25220 :isa common) (:var mv25221 :isa upstream-segment :raw-text "upstream"))
  ("What are common downstream regulators of MMP3 and SERPINE1?"
   (:var mv25236 :isa be :subject mv25235 :predicate mv25248 :present "PRESENT")
   (:var mv25235 :isa what)
   (:var mv25248 :isa regulator :plural t :theme mv25244 :predication mv25237 :context mv25238
    :raw-text "regulators")
   (:var mv25244 :isa collection :raw-text "MMP3 and SERPINE1" :type protein :number 2 :items
    (mv25233 mv25234))
   (:var mv25233 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv25234 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv25237 :isa common) (:var mv25238 :isa downstream-segment :raw-text "downstream"))
  ("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
   (:var mv25255 :isa be :subject mv25254 :predicate mv25265 :present "PRESENT")
   (:var mv25254 :isa what)
   (:var mv25265 :isa protein-family :plural t :molecule-type mv25261 :predication mv25256 :context
    mv25257 :raw-text "transcriptional regulators" :uid "XFAM:PF02082" :name
    "transcriptional regulator")
   (:var mv25261 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv25251 mv25252 mv25253))
   (:var mv25251 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv25252 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv25253 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv25256 :isa common) (:var mv25257 :isa upstream-segment :raw-text "upstream"))
  ("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
   (:var mv25269 :isa be :subject mv25268 :predicate mv25283 :present "PRESENT")
   (:var mv25268 :isa what)
   (:var mv25283 :isa mutation :plural t :context mv25267 :object mv25278 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv25267 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv25278 :isa collection :raw-text "PTEN, TP53 and BRAF" :type protein :number 3 :items
    (mv25274 mv25266 mv25276))
   (:var mv25274 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv25266 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv25276 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the mutation frequency of TP53 in ovarian cancer?"
   (:var mv25287 :isa be :subject mv25286 :predicate mv25290 :present "PRESENT")
   (:var mv25286 :isa what)
   (:var mv25290 :isa frequency :context mv25285 :measured-item mv25284 :has-determiner "THE"
    :measured-item mv25289 :raw-text "frequency")
   (:var mv25285 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv25284 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv25289 :isa mutation :raw-text "mutation"))
  ("Which genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv25307 :isa copular-predication :item mv25304 :value mv25295 :predicate mv25301)
   (:var mv25304 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv25295 :isa mutual-exclusivity :disease mv25297 :alternative mv25296)
   (:var mv25297 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv25296 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv25301 :isa be :present "PRESENT"))
  ("Which genes are mutually exclusive with CDH1 in breast cancer?"
   (:var mv25320 :isa copular-predication :item mv25317 :value mv25308 :predicate mv25314)
   (:var mv25317 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv25308 :isa mutual-exclusivity :disease mv25310 :alternative mv25309)
   (:var mv25310 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv25309 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv25314 :isa be :present "PRESENT"))
  ("What is the cellular location of akt1?"
   (:var mv25323 :isa be :subject mv25322 :predicate mv25329 :present "PRESENT")
   (:var mv25322 :isa what) (:var mv25329 :isa quality-predicate :item mv25321 :attribute mv25326)
   (:var mv25321 :isa protein :raw-text "akt1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv25326 :isa location-of :has-determiner "THE" :modifier mv25325)
   (:var mv25325 :isa cellular :name "cellular"))
  ("How does MAPK regulate BRAF?"
   (:var mv25333 :isa regulate :manner mv25330 :agent mv25332 :object mv25334 :present "PRESENT"
    :raw-text "regulate")
   (:var mv25330 :isa how)
   (:var mv25332 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv25334 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is BRAF?" (:var mv25336 :isa be :subject mv25335 :predicate mv25337 :present "PRESENT")
   (:var mv25335 :isa what)
   (:var mv25337 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is BRAF a member of the RAF family?" (:var mv25349 :isa polar-question :statement mv25338)
   (:var mv25338 :isa be :subject mv25339 :predicate mv25341)
   (:var mv25339 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25341 :isa member :set mv25347 :has-determiner "A")
   (:var mv25347 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What genes are in RAS?"
   (:var mv25358 :isa copular-predication-of-pp :item mv25356 :value mv25355 :prep mv25354
    :predicate mv25353)
   (:var mv25356 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv25355 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663")
   (:var mv25354 :isa in :word "in") (:var mv25353 :isa be :present "PRESENT"))
  ("What genes are in the RAF family?"
   (:var mv25371 :isa copular-predication-of-pp :item mv25368 :value mv25369 :prep mv25363
    :predicate mv25362)
   (:var mv25368 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv25369 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv25363 :isa in :word "in") (:var mv25362 :isa be :present "PRESENT"))
  ("What are some other names for BRAF?"
   (:var mv25373 :isa be :subject mv25372 :predicate mv25386 :present "PRESENT")
   (:var mv25372 :isa what)
   (:var mv25386 :isa has-name :plural t :item mv25382 :quantifier mv25374 :modifier mv25375)
   (:var mv25382 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25374 :isa some :word "some") (:var mv25375 :isa other :name "other"))
  ("What are synonyms for ERK?"
   (:var mv25388 :isa be :subject mv25387 :predicate mv25394 :present "PRESENT")
   (:var mv25387 :isa what) (:var mv25394 :isa has-synonym :plural t :item mv25392)
   (:var mv25392 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors are shared by CXCL8, CXCL10, and IL2?"
   (:var mv25407 :isa share :object mv25406 :participant mv25405 :present "PRESENT" :raw-text
    "shared")
   (:var mv25406 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv25405 :isa collection :raw-text "CXCL8, CXCL10, and IL2" :type protein :number 3 :items
    (mv25397 mv25398 mv25399))
   (:var mv25397 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv25398 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv25399 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What are the paths between BRAF and AKT1?"
   (:var mv25411 :isa be :subject mv25410 :predicate mv25421 :present "PRESENT")
   (:var mv25410 :isa what)
   (:var mv25421 :isa path :plural t :endpoints mv25418 :has-determiner "THE")
   (:var mv25418 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv25416 mv25409))
   (:var mv25416 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25409 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Is SMAD2 a transcription factor?" (:var mv25426 :isa polar-question :statement mv25424)
   (:var mv25424 :isa be :subject mv25422 :predicate mv25423)
   (:var mv25422 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv25423 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Remove the fact that active MEK activates ERK from the model."
   (:var mv25427 :isa remove :object mv25439 :present "PRESENT" :raw-text "Remove")
   (:var mv25439 :isa fact :statement mv25433 :has-determiner "THE")
   (:var mv25433 :isa bio-activate :agent mv25432 :object mv25434 :present "PRESENT" :raw-text
    "activates")
   (:var mv25432 :isa protein-family :predication mv25431 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25431 :isa active)
   (:var mv25434 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active MEK activates ERK"
   (:var mv25442 :isa bio-activate :agent mv25441 :object mv25443 :present "PRESENT" :raw-text
    "activates")
   (:var mv25441 :isa protein-family :predication mv25440 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25440 :isa active)
   (:var mv25443 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is in the model?"
   (:var mv25450 :isa copular-predication-of-pp :item mv25444 :value mv25448 :prep mv25446
    :predicate mv25445)
   (:var mv25444 :isa what) (:var mv25448 :isa model :has-determiner "THE")
   (:var mv25446 :isa in :word "in") (:var mv25445 :isa be :present "PRESENT"))
  ("Is the amount of phosphorylated ERK ever high?"
   (:var mv25461 :isa polar-question :statement mv25460)
   (:var mv25460 :isa copular-predication :item mv25453 :value mv25458 :predicate mv25451)
   (:var mv25453 :isa bio-amount :measured-item mv25456 :has-determiner "THE" :raw-text "amount")
   (:var mv25456 :isa protein-family :predication mv25455 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv25455 :isa phosphorylate :substrate mv25456 :raw-text "phosphorylated")
   (:var mv25458 :isa high :adverb mv25457) (:var mv25457 :isa ever :name "ever")
   (:var mv25451 :isa be))
  ("What genes are mutually exclusive with PTEN for prostate cancer?"
   (:var mv25474 :isa copular-predication :item mv25471 :value mv25462 :predicate mv25467)
   (:var mv25471 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv25462 :isa mutual-exclusivity :disease mv25463 :alternative mv25469)
   (:var mv25463 :isa cancer :name "prostate cancer" :uid "TS-1224")
   (:var mv25469 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv25467 :isa be :present "PRESENT"))
  ("What signaling pathways are shared by SMAD2 and CXCL8?"
   (:var mv25486 :isa share :object mv25485 :participant mv25484 :present "PRESENT" :raw-text
    "shared")
   (:var mv25485 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv25484 :isa collection :raw-text "SMAD2 and CXCL8" :type protein :number 2 :items
    (mv25477 mv25478))
   (:var mv25477 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv25478 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"
   (:var mv25496 :isa regulate :agent mv25499 :object mv25498 :present "PRESENT" :adverb mv25494
    :adverb mv25495 :raw-text "regulate")
   (:var mv25499 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv25498 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv25488 mv25489 mv25490))
   (:var mv25488 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv25489 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv25490 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv25494 :isa superlative-quantifier :name "most")
   (:var mv25495 :isa frequently :name "frequently"))
  ("What is the most likely cellular location of PTEN?"
   (:var mv25501 :isa be :subject mv25500 :predicate mv25511 :present "PRESENT")
   (:var mv25500 :isa what) (:var mv25511 :isa quality-predicate :item mv25509 :attribute mv25507)
   (:var mv25509 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv25507 :isa location-of :has-determiner "THE" :predication mv25505 :modifier mv25506)
   (:var mv25505 :isa likely :comparative mv25503)
   (:var mv25503 :isa superlative-quantifier :name "most")
   (:var mv25506 :isa cellular :name "cellular"))
  ("Is BRAF a kinase?" (:var mv25516 :isa polar-question :statement mv25512)
   (:var mv25512 :isa be :subject mv25513 :predicate mv25515)
   (:var mv25513 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25515 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Can you tell me whether BRAF is a kinase?"
   (:var mv25528 :isa polar-question :statement mv25519)
   (:var mv25519 :isa tell :agent mv25518 :theme mv25527 :theme mv25520 :modal "CAN")
   (:var mv25518 :isa interlocutor :name "hearer")
   (:var mv25527 :isa wh-question :statement mv25524 :wh whether)
   (:var mv25524 :isa be :subject mv25523 :predicate mv25526 :modal "CAN")
   (:var mv25523 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25526 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv25520 :isa interlocutor :name "speaker"))
  ("I want to know if BRAF is a kinase."
   (:var mv25532 :isa want :agent mv25529 :theme mv25542 :present "PRESENT")
   (:var mv25529 :isa interlocutor :name "speaker")
   (:var mv25542 :isa know :agent mv25529 :statement mv25541)
   (:var mv25541 :isa wh-question :statement mv25537 :wh if)
   (:var mv25537 :isa be :subject mv25536 :predicate mv25539 :present "PRESENT")
   (:var mv25536 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25539 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What does BRAF do?" (:var mv25543 :isa what))
  ("What type of protein is BRAF?"
   (:var mv25551 :isa be :subject mv25548 :predicate mv25552 :present "PRESENT")
   (:var mv25548 :isa type :molecule-type mv25550 :has-determiner "WHAT" :raw-text "type")
   (:var mv25550 :isa protein :raw-text "protein")
   (:var mv25552 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the activity of the BRAF protein?"
   (:var mv25555 :isa be :subject mv25554 :predicate mv25557 :present "PRESENT")
   (:var mv25554 :isa what)
   (:var mv25557 :isa bio-activity :participant mv25562 :has-determiner "THE" :raw-text "activity")
   (:var mv25562 :isa protein :has-determiner "THE" :raw-text "BRAF" :uid "UP:P15056" :name
    "BRAF_HUMAN"))
  ("Is BRAF a kinase or a transcription factor?"
   (:var mv25572 :isa polar-question :statement mv25565)
   (:var mv25565 :isa be :subject mv25566 :predicate mv25571)
   (:var mv25566 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25571 :isa collection :raw-text "a kinase or a transcription factor" :type kinase
    :number 2 :items (mv25568 mv25564))
   (:var mv25568 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv25564 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("What proteins are targeted by NG25?"
   (:var mv25581 :isa target :object mv25580 :agent mv25573 :present "PRESENT" :raw-text
    "targeted")
   (:var mv25580 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv25573 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("Name transcription factors shared by FN1, MMP3, and SERPINE1."
   (:var mv25588 :isa name-something :patient mv25584 :present "PRESENT")
   (:var mv25584 :isa transcription-factor :plural t :predication mv25591 :raw-text
    "transcription factors")
   (:var mv25591 :isa share :object mv25584 :participant mv25594 :past "PAST" :raw-text "shared")
   (:var mv25594 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv25585 mv25586 mv25587))
   (:var mv25585 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv25586 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv25587 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN"))
  ("Tell me if STAT3 is a transcription factor"
   (:var mv25599 :isa tell :theme mv25604 :beneficiary mv25600 :present "PRESENT")
   (:var mv25604 :isa wh-question :statement mv25602 :wh if)
   (:var mv25602 :isa be :subject mv25597 :predicate mv25598 :present "PRESENT")
   (:var mv25597 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25598 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor")
   (:var mv25600 :isa interlocutor :name "speaker"))
  ("Show me signaling pathways shared by MAP3K7 and CXCL8."
   (:var mv25609 :isa show :|statement-OR-theme| mv25616 :beneficiary mv25610 :present "PRESENT")
   (:var mv25616 :isa signaling-pathway :plural t :predication mv25611 :raw-text
    "signaling pathways")
   (:var mv25611 :isa share :object mv25616 :participant mv25614 :past "PAST" :raw-text "shared")
   (:var mv25614 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv25607 mv25608))
   (:var mv25607 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv25608 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv25610 :isa interlocutor :name "speaker"))
  ("Give me signaling pathways shared by MAP3K7 and CXCL8"
   (:var mv25621 :isa give :theme mv25628 :beneficiary mv25622 :present "PRESENT")
   (:var mv25628 :isa signaling-pathway :plural t :predication mv25623 :raw-text
    "signaling pathways")
   (:var mv25623 :isa share :object mv25628 :participant mv25626 :past "PAST" :raw-text "shared")
   (:var mv25626 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv25619 mv25620))
   (:var mv25619 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv25620 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv25622 :isa interlocutor :name "speaker"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"
   (:var mv25658 :isa polar-question :statement mv25657)
   (:var mv25657 :isa event-relation :subordinated-event mv25653 :event mv25655)
   (:var mv25653 :isa wh-question :statement mv25640 :wh if)
   (:var mv25640 :isa increase :|agent-OR-cause| mv25638 :|multiplier-OR-cause| mv25650
    :|affected-process-OR-object| mv25642 :present "PRESENT" :raw-text "increase")
   (:var mv25638 :isa interlocutor :name "person-and-machine")
   (:var mv25650 :isa measurement :number mv25647) (:var mv25647 :isa number :value 10)
   (:var mv25642 :isa bio-amount :measured-item mv25644 :has-determiner "THE" :raw-text "amount")
   (:var mv25644 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25655 :isa copular-predication :item mv25631 :value mv25636 :predicate mv25629)
   (:var mv25631 :isa bio-amount :measured-item mv25634 :has-determiner "THE" :raw-text "amount")
   (:var mv25634 :isa protein-family :predication mv25633 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv25633 :isa phosphorylate :substrate mv25634 :raw-text "phosphorylated")
   (:var mv25636 :isa high :adverb mv25635) (:var mv25635 :isa ever :name "ever")
   (:var mv25629 :isa be))
  ("Active MEK phosphorylates ERK"
   (:var mv25661 :isa phosphorylate :agent mv25660 :substrate mv25662 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv25660 :isa protein-family :predication mv25659 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25659 :isa active)
   (:var mv25662 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK ten fold?"
   (:var mv25690 :isa polar-question :statement mv25689)
   (:var mv25689 :isa event-relation :subordinated-event mv25685 :event mv25687)
   (:var mv25685 :isa wh-question :statement mv25674 :wh if)
   (:var mv25674 :isa increase :|agent-OR-cause| mv25672 :level mv25683
    :|affected-process-OR-object| mv25676 :present "PRESENT" :raw-text "increase")
   (:var mv25672 :isa interlocutor :name "person-and-machine")
   (:var mv25683 :isa measurement :number mv25680) (:var mv25680 :isa number :value 10)
   (:var mv25676 :isa bio-amount :measured-item mv25678 :has-determiner "THE" :raw-text "amount")
   (:var mv25678 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25687 :isa copular-predication :item mv25665 :value mv25670 :predicate mv25663)
   (:var mv25665 :isa bio-amount :measured-item mv25668 :has-determiner "THE" :raw-text "amount")
   (:var mv25668 :isa protein-family :predication mv25667 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv25667 :isa phosphorylate :substrate mv25668 :raw-text "phosphorylated")
   (:var mv25670 :isa high :adverb mv25669) (:var mv25669 :isa ever :name "ever")
   (:var mv25663 :isa be))
  ("What are some pathways that affect BRAF?"
   (:var mv25692 :isa be :subject mv25691 :predicate mv25700 :present "PRESENT")
   (:var mv25691 :isa what)
   (:var mv25700 :isa pathway :plural t :predication mv25697 :quantifier mv25693 :raw-text
    "pathways")
   (:var mv25697 :isa affect :agent mv25700 :that-rel t :object mv25698 :present "PRESENT"
    :raw-text "affect")
   (:var mv25698 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25693 :isa some :word "some"))
  ("What are the pathways that affect BRAF"
   (:var mv25702 :isa be :subject mv25701 :predicate mv25710 :present "PRESENT")
   (:var mv25701 :isa what)
   (:var mv25710 :isa pathway :plural t :predication mv25707 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv25707 :isa affect :agent mv25710 :that-rel t :object mv25708 :present "PRESENT"
    :raw-text "affect")
   (:var mv25708 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are regulated by miR-20b-5p, and miR-145-5p?"
   (:var mv25722 :isa regulate :object mv25721 :agent mv25720 :present "PRESENT" :raw-text
    "regulated")
   (:var mv25721 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv25720 :isa collection :raw-text "miR-20b-5p, and miR-145-5p" :type micro-rna :number 2
    :items (mv25711 mv25712))
   (:var mv25711 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv25712 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid
    "MIMAT0000437"))
  ("What are some genes that are regulated by ELK1?"
   (:var mv25726 :isa be :subject mv25725 :predicate mv25737 :present "PRESENT")
   (:var mv25725 :isa what)
   (:var mv25737 :isa gene :plural t :predication mv25735 :quantifier mv25727 :raw-text "genes")
   (:var mv25735 :isa regulate :object mv25737 :that-rel t :agent mv25724 :present "PRESENT"
    :raw-text "regulated")
   (:var mv25724 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv25727 :isa some :word "some"))
  ("What pathways contain CXCL8 and CXCL10?"
   (:var mv25743 :isa contain :theme mv25746 :patient mv25745 :present "PRESENT")
   (:var mv25746 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv25745 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv25738 mv25739))
   (:var mv25738 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv25739 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Remove the fact that IL10 activates STAT3 in the model"
   (:var mv25749 :isa remove :object mv25758 :present "PRESENT" :raw-text "Remove")
   (:var mv25758 :isa fact :statement mv25753 :has-determiner "THE")
   (:var mv25753 :isa bio-activate :agent mv25747 :object mv25748 :present "PRESENT" :raw-text
    "activates")
   (:var mv25747 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv25748 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Remove active IL10 activates STAT3 from the model"
   (:var mv25761 :isa remove :object mv25759 :present "PRESENT" :raw-text "Remove")
   (:var mv25759 :isa protein :predication mv25762 :raw-text "IL10" :uid "UP:P22301" :name
    "IL10_HUMAN")
   (:var mv25762 :isa active))
  ("What are some paths between BRAF and AKT1?"
   (:var mv25770 :isa be :subject mv25769 :predicate mv25780 :present "PRESENT")
   (:var mv25769 :isa what)
   (:var mv25780 :isa path :plural t :endpoints mv25777 :quantifier mv25771)
   (:var mv25777 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv25775 mv25768))
   (:var mv25775 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25768 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv25771 :isa some :word "some"))
  ("Does MEK1 activate ERK2" (:var mv25786 :isa polar-question :statement mv25785)
   (:var mv25785 :isa bio-activate :agent mv25781 :object mv25782 :raw-text "activate")
   (:var mv25781 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv25782 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("What drugs tagret BRAF?"
   (:var mv25790 :isa protein :has-determiner "WHAT" :modifier mv25789 :modifier mv25791 :raw-text
    "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25789 :isa drug :plural t :raw-text "drugs")
   (:var mv25791 :isa bio-entity :name "tagret"))
  ("Which kinases are in the MAPK signalling pathway?"
   (:var mv25805 :isa copular-predication-of-pp :item mv25800 :value mv25804 :prep "IN" :predicate
    mv25796)
   (:var mv25800 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv25804 :isa kinase :plural t :in-pathway mv25792 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv25792 :isa signaling-pathway :has-determiner "THE" :modifier mv25799 :raw-text
    "signalling pathway")
   (:var mv25799 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv25796 :isa be :present "PRESENT"))
  ("What drugs drugs target BRAF?"
   (:var mv25813 :isa target :agent mv25817 :object mv25814 :present "PRESENT" :raw-text "target")
   (:var mv25817 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv25814 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What rgulates ELLK1?"
   (:var mv25821 :isa bio-entity :has-determiner "WHAT" :modifier mv25822 :name "ELLK1")
   (:var mv25822 :isa bio-entity :name "rgulates"))
  ("Does STAT3 increase expression of c-fos in liver?"
   (:var mv25835 :isa polar-question :statement mv25832)
   (:var mv25832 :isa increase :agent mv25823 :affected-process mv25828 :raw-text "increase")
   (:var mv25823 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25828 :isa gene-transcript-express :object mv25824 :raw-text "expression")
   (:var mv25824 :isa protein :organ mv25831 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv25831 :isa liver))
  ("Does STAT3 affect c-fos expression in liver?"
   (:var mv25845 :isa polar-question :statement mv25843)
   (:var mv25843 :isa affect :agent mv25836 :affected-process mv25840 :raw-text "affect")
   (:var mv25836 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25840 :isa gene-transcript-express :organ mv25842 :object mv25837 :raw-text
    "expression")
   (:var mv25842 :isa liver)
   (:var mv25837 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 alter c-fos expression?" (:var mv25852 :isa polar-question :statement mv25851)
   (:var mv25851 :isa alter :agent mv25846 :affected-process mv25850 :raw-text "alter")
   (:var mv25846 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25850 :isa gene-transcript-express :object mv25847 :raw-text "expression")
   (:var mv25847 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcriptional regulator of c-fos?"
   (:var mv25860 :isa polar-question :statement mv25856)
   (:var mv25856 :isa be :subject mv25853 :predicate mv25854)
   (:var mv25853 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25854 :isa protein-family :molecule-type mv25855 :has-determiner "A" :raw-text
    "transcriptional regulator" :name "transcriptional regulator" :uid "XFAM:PF02082")
   (:var mv25855 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which drugs inhibit BRAF?"
   (:var mv25864 :isa inhibit :agent mv25866 :object mv25865 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv25866 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv25865 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("STAT3 upregulates ELK1."
   (:var mv25869 :isa upregulate :agent mv25867 :object mv25868 :present "PRESENT" :raw-text
    "upregulates")
   (:var mv25867 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25868 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What does STAT3 transcribe?"
   (:var mv25873 :isa transcribe :object mv25871 :agent mv25870 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv25871 :isa what)
   (:var mv25870 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is PI3K?" (:var mv25876 :isa be :subject mv25875 :predicate mv25874 :present "PRESENT")
   (:var mv25875 :isa what)
   (:var mv25874 :isa protein-family :raw-text "PI3K" :name "PI3-kinase" :count 4 :family-members
    ((protein (:name "PI3R5_HUMAN") (:uid "UP:Q8WYR1"))
     (protein (:name "PK3C3_HUMAN") (:uid "UP:Q8NEB9"))
     (protein (:name "PK3CA_HUMAN") (:uid "UP:P42336"))
     (protein (:name "P3C2G_HUMAN") (:uid "UP:O75747")))
    :uid "XFAM:PF00454"))
  ("What is MEK?" (:var mv25878 :isa be :subject mv25877 :predicate mv25879 :present "PRESENT")
   (:var mv25877 :isa what)
   (:var mv25879 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What phosphorylates ERK?"
   (:var mv25881 :isa phosphorylate :|agent-OR-cause| mv25880 :substrate mv25882 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv25880 :isa what)
   (:var mv25882 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What drugs target AKT?"
   (:var mv25887 :isa target :agent mv25889 :object mv25888 :present "PRESENT" :raw-text "target")
   (:var mv25889 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv25888 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066"))
  ("What regulates ELLK1?"
   (:var mv25892 :isa regulate :|agent-OR-cause| mv25891 :object mv25890 :present "PRESENT"
    :raw-text "regulates")
   (:var mv25891 :isa what) (:var mv25890 :isa bio-entity :name "ELLK1"))
  ("What regulates ELK1?"
   (:var mv25895 :isa regulate :|agent-OR-cause| mv25894 :object mv25893 :present "PRESENT"
    :raw-text "regulates")
   (:var mv25894 :isa what)
   (:var mv25893 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Does miR-20b-5pp target STAT3?" (:var mv25906 :isa polar-question :statement mv25905)
   (:var mv25905 :isa target :agent mv25904 :object mv25897 :raw-text "target")
   (:var mv25904 :isa bio-entity :name "miR-20b-5pp")
   (:var mv25897 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the mutations of PTEEN in prostate cancer?"
   (:var mv25909 :isa be :subject mv25908 :predicate mv25916 :present "PRESENT")
   (:var mv25908 :isa what)
   (:var mv25916 :isa mutation :plural t :has-determiner "THE" :raw-text "mutations"))
  ("What does selumitinibib target?"
   (:var mv25922 :isa target :|affected-process-OR-object| mv25919 :agent mv25923 :present
    "PRESENT" :raw-text "target")
   (:var mv25919 :isa what) (:var mv25923 :isa bio-entity :name "selumitinibib"))
  ("Is ELLK1 a kinase?" (:var mv25928 :isa polar-question :statement mv25925)
   (:var mv25925 :isa be :subject mv25924 :predicate mv25927)
   (:var mv25924 :isa bio-entity :name "ELLK1")
   (:var mv25927 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What regulates ELK12?"
   (:var mv25930 :isa regulate :|agent-OR-cause| mv25929 :object mv25931 :present "PRESENT"
    :raw-text "regulates")
   (:var mv25929 :isa what)
   (:var mv25931 :isa protein :variant-number mv25933 :raw-text "ELK" :uid "UP:P54762" :name
    "EPHB1_HUMAN")
   (:var mv25933 :isa number :value 12))
  ("What does sleumiitibbb target?"
   (:var mv25937 :isa target :|affected-process-OR-object| mv25934 :agent mv25938 :present
    "PRESENT" :raw-text "target")
   (:var mv25934 :isa what) (:var mv25938 :isa bio-entity :name "sleumiitibbb"))
  ("What is the evidence that MEK1 phosphorylates ERK1?"
   (:var mv25942 :isa be :subject mv25941 :predicate mv25947 :present "PRESENT")
   (:var mv25941 :isa what) (:var mv25947 :isa evidence :statement mv25946 :has-determiner "THE")
   (:var mv25946 :isa phosphorylate :agent mv25939 :substrate mv25940 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv25939 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv25940 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Remove STAT3 from the model."
   (:var mv25949 :isa remove :object mv25948 :present "PRESENT" :raw-text "Remove")
   (:var mv25948 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Remove the last interaction from the model."
   (:var mv25954 :isa remove :object mv25957 :present "PRESENT" :raw-text "Remove")
   (:var mv25957 :isa interact :has-determiner "THE" :predication mv25956 :raw-text "interaction")
   (:var mv25956 :isa last-sequence :name "last"))
  ("IL10 activates STAT3"
   (:var mv25964 :isa bio-activate :agent mv25962 :object mv25963 :present "PRESENT" :raw-text
    "activates")
   (:var mv25962 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv25963 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How many interactions are in the model?"
   (:var mv25974 :isa copular-predication-of-pp :item mv25972 :value mv25971 :prep mv25969
    :predicate mv25968)
   (:var mv25972 :isa interact :plural t :quantifier how-many :raw-text "interactions")
   (:var mv25971 :isa model :has-determiner "THE") (:var mv25969 :isa in :word "in")
   (:var mv25968 :isa be :present "PRESENT"))
  ("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
   (:var mv25986 :isa polar-question :statement mv25984)
   (:var mv25984 :isa decrease :agent mv25977 :|affected-process-OR-object| mv25981 :raw-text
    "decrease")
   (:var mv25977 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv25981 :isa bio-amount :measured-item mv25975 :has-determiner "THE" :raw-text "amount")
   (:var mv25975 :isa protein :predication mv25983 :raw-text "MAP2K2" :uid "UP:P36507" :name
    "MP2K2_HUMAN")
   (:var mv25983 :isa phosphorylate :substrate mv25975 :raw-text "phosphorylated"))
  ("What kinases does ERK1 activate?"
   (:var mv25992 :isa bio-activate :object mv25993 :agent mv25987 :present "PRESENT" :raw-text
    "activate")
   (:var mv25993 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv25987 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What kinases does MEK1 activate?"
   (:var mv25999 :isa bio-activate :object mv26000 :agent mv25994 :present "PRESENT" :raw-text
    "activate")
   (:var mv26000 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv25994 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What does ERK1 activate?"
   (:var mv26004 :isa bio-activate :|affected-process-OR-object| mv26002 :agent mv26001 :present
    "PRESENT" :raw-text "activate")
   (:var mv26002 :isa what)
   (:var mv26001 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does JAK1 phosphorylate?"
   (:var mv26008 :isa phosphorylate :|substrate-OR-site-OR-amino-acid| mv26006 :agent mv26005
    :present "PRESENT" :raw-text "phosphorylate")
   (:var mv26006 :isa what)
   (:var mv26005 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What kinases does STAT3 regulate?"
   (:var mv26014 :isa regulate :object mv26015 :agent mv26009 :present "PRESENT" :raw-text
    "regulate")
   (:var mv26015 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26009 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve SRF and what does SRF bind?"
   (:var mv26027 :isa collection :type involve :number 2 :items (mv26019 mv26025))
   (:var mv26019 :isa involve :theme mv26026 :object mv26020 :present "PRESENT")
   (:var mv26026 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26020 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv26025 :isa binding :direct-bindee mv26022 :binder mv26024 :present "PRESENT" :raw-text
    "bind")
   (:var mv26022 :isa what)
   (:var mv26024 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF?"
   (:var mv26031 :isa involve :theme mv26033 :object mv26032 :present "PRESENT")
   (:var mv26033 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26032 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does SRF bind?"
   (:var mv26037 :isa binding :direct-bindee mv26034 :binder mv26036 :present "PRESENT" :raw-text
    "bind")
   (:var mv26034 :isa what)
   (:var mv26036 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF and is SRF a kinase?"
   (:var mv26049 :isa collection :type involve :number 2 :items (mv26041 mv26044))
   (:var mv26041 :isa involve :theme mv26048 :object mv26042 :present "PRESENT")
   (:var mv26048 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26042 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv26044 :isa be :subject mv26048 :predicate mv26045 :present "PRESENT")
   (:var mv26045 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Does MAP2K1 phosphorylate and activate MAPK1?"
   (:var mv26060 :isa polar-question :statement mv26059)
   (:var mv26059 :isa collection :type phosphorylate :items
    (((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:substrate (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "phosphorylate"))
     ((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:object (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "activate")))
    :number 2))
  ("Does MAP2K1 phosphorylate MAPK3?" (:var mv26066 :isa polar-question :statement mv26065)
   (:var mv26065 :isa phosphorylate :agent mv26061 :substrate mv26062 :raw-text "phosphorylate")
   (:var mv26061 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv26062 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Which kinases activate MEK2?"
   (:var mv26071 :isa bio-activate :agent mv26072 :object mv26067 :present "PRESENT" :raw-text
    "activate")
   (:var mv26072 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv26067 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Which drugs target upstreams of CXCL8 and CXCL10?"
   (:var mv26079 :isa target :agent mv26085 :affected-process mv26087 :present "PRESENT" :raw-text
    "target")
   (:var mv26085 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv26087 :isa upstream-segment :plural t :pathwaycomponent mv26084 :raw-text "upstreams")
   (:var mv26084 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv26073 mv26074))
   (:var mv26073 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv26074 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Which drugs target CXCL8?"
   (:var mv26093 :isa target :agent mv26094 :object mv26088 :present "PRESENT" :raw-text "target")
   (:var mv26094 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv26088 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Which drugs target Jak3?"
   (:var mv26100 :isa target :agent mv26101 :object mv26095 :present "PRESENT" :raw-text "target")
   (:var mv26101 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv26095 :isa protein :raw-text "Jak3" :uid "UP:P52333" :name "JAK3_HUMAN"))
  ("What drugs target transcription factors shared by CXCL8 and CXCL10?"
   (:var mv26110 :isa target :agent mv26115 :object mv26103 :present "PRESENT" :raw-text "target")
   (:var mv26115 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv26103 :isa transcription-factor :plural t :predication mv26111 :raw-text
    "transcription factors")
   (:var mv26111 :isa share :object mv26103 :participant mv26114 :past "PAST" :raw-text "shared")
   (:var mv26114 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv26104 mv26105))
   (:var mv26104 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv26105 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What kinases does miR-20a-5p target?"
   (:var mv26124 :isa target :object mv26125 :agent mv26118 :present "PRESENT" :raw-text "target")
   (:var mv26125 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26118 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What transcription factors does miR-20a-5p target?"
   (:var mv26132 :isa target :object mv26133 :agent mv26128 :present "PRESENT" :raw-text "target")
   (:var mv26133 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv26128 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What kinases are mutually exclusive with CDH1 for breast cancer?"
   (:var mv26146 :isa copular-predication :item mv26143 :value mv26134 :predicate mv26140)
   (:var mv26143 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26134 :isa mutual-exclusivity :disease mv26136 :alternative mv26135)
   (:var mv26136 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv26135 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv26140 :isa be :present "PRESENT"))
  ("What drugs target fakeprotein?"
   (:var mv26151 :isa target :agent mv26153 :object mv26152 :present "PRESENT" :raw-text "target")
   (:var mv26153 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv26152 :isa bio-entity :name "fakeprotein"))
  ("Which kinases are in the FAKE signaling pathway?"
   (:var mv26167 :isa copular-predication-of-pp :item mv26162 :value mv26166 :prep "IN" :predicate
    mv26158)
   (:var mv26162 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv26166 :isa kinase :plural t :in-pathway mv26154 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv26154 :isa signaling-pathway :has-determiner "THE" :modifier mv26161 :raw-text
    "signaling pathway")
   (:var mv26161 :isa bio-entity :name "FAKE") (:var mv26158 :isa be :present "PRESENT"))
  ("What are the mutations of PTEN in fictional cancer?"
   (:var mv26170 :isa be :subject mv26169 :predicate mv26183 :present "PRESENT")
   (:var mv26169 :isa what)
   (:var mv26183 :isa mutation :plural t :context mv26178 :object mv26175 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv26178 :isa cancer :predication mv26177) (:var mv26177 :isa fictional)
   (:var mv26175 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))
  ("What are the mutations of PTEN in liver cancer?"
   (:var mv26185 :isa be :subject mv26184 :predicate mv26198 :present "PRESENT")
   (:var mv26184 :isa what)
   (:var mv26198 :isa mutation :plural t :context mv26193 :object mv26190 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv26193 :isa cancer :organ mv26192) (:var mv26192 :isa liver)
   (:var mv26190 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))
  ("Remove the fact that ELk1 transcribes FAKE in the model."
   (:var mv26200 :isa remove :object mv26210 :present "PRESENT" :raw-text "Remove")
   (:var mv26210 :isa fact :statement mv26204 :has-determiner "THE")
   (:var mv26204 :isa transcribe :agent mv26199 :object mv26205 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv26199 :isa protein :raw-text "ELk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv26205 :isa bio-entity :name "FAKE"))
  ("ELK1 transcribes FOS"
   (:var mv26212 :isa transcribe :agent mv26211 :object mv26213 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv26211 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv26213 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Remove the fact that ELK1 transcribes FOS in the model."
   (:var mv26215 :isa remove :object mv26225 :present "PRESENT" :raw-text "Remove")
   (:var mv26225 :isa fact :statement mv26219 :has-determiner "THE")
   (:var mv26219 :isa transcribe :agent mv26214 :object mv26220 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv26214 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv26220 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What transcription factors are shared by CXCL8 and FAKE10?"
   (:var mv26240 :isa share :object mv26239 :participant mv26238 :present "PRESENT" :raw-text
    "shared")
   (:var mv26239 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv26238 :isa collection :raw-text "CXCL8 and FAKE10" :type protein :number 2 :items
    (mv26228 mv26237))
   (:var mv26228 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv26237 :isa bio-entity :name "FAKE10"))
  ("What transcription factors are shared by CXCL8 and CXCL10?"
   (:var mv26253 :isa share :object mv26252 :participant mv26251 :present "PRESENT" :raw-text
    "shared")
   (:var mv26252 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv26251 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv26244 mv26245))
   (:var mv26244 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv26245 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What databases do you use?" (:var mv26262 :isa database :plural t :has-determiner "WHAT"))
  ("What is the MSA?" (:var mv26264 :isa be :subject mv26263 :predicate mv26266 :present "PRESENT")
   (:var mv26263 :isa what)
   (:var mv26266 :isa protein :has-determiner "THE" :raw-text "MSA" :uid "UP:Q9FIB6" :name
    "PS12A_ARATH"))
  ("What tissues can I ask about?"
   (:var mv26277 :isa ask :patient mv26276 :modal mv26270 :agent mv26271 :present "PRESENT")
   (:var mv26276 :isa tissue :plural t :has-determiner "WHAT") (:var mv26270 :isa can)
   (:var mv26271 :isa interlocutor :name "speaker"))
  ("What cancers can I ask about?"
   (:var mv26288 :isa ask :patient mv26287 :modal mv26281 :agent mv26282 :present "PRESENT")
   (:var mv26287 :isa cancer :plural t :has-determiner "WHAT") (:var mv26281 :isa can)
   (:var mv26282 :isa interlocutor :name "speaker"))
  ("What mechanisms can I ask about?"
   (:var mv26299 :isa ask :patient mv26298 :modal mv26292 :agent mv26293 :present "PRESENT")
   (:var mv26298 :isa bio-mechanism :plural t :has-determiner "WHAT") (:var mv26292 :isa can)
   (:var mv26293 :isa interlocutor :name "speaker"))
  ("What does STAT3 regulate?"
   (:var mv26303 :isa regulate :|affected-process-OR-object| mv26301 :agent mv26300 :present
    "PRESENT" :raw-text "regulate")
   (:var mv26301 :isa what)
   (:var mv26300 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these are kinases?"
   (:var mv26307 :isa be :subject mv26306 :predicate mv26309 :present "PRESENT")
   (:var mv26306 :isa these :quantifier mv26304 :word "these") (:var mv26304 :isa which)
   (:var mv26309 :isa kinase :plural t :raw-text "kinases"))
  ("What pathways is ERK1 in?"
   (:var mv26315 :isa be :subject mv26317 :predicate mv26311 :present "PRESENT")
   (:var mv26317 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26311 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Which of these is AKT1 in?"
   (:var mv26322 :isa be :subject mv26321 :predicate mv26318 :present "PRESENT")
   (:var mv26321 :isa these :quantifier mv26319 :word "these") (:var mv26319 :isa which)
   (:var mv26318 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What pathways are ERK1 and AKT1 in?"
   (:var mv26330 :isa be :subject mv26334 :predicate mv26333 :present "PRESENT")
   (:var mv26334 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26333 :isa collection :raw-text "ERK1 and AKT1" :type protein :number 2 :items
    (mv26325 mv26326))
   (:var mv26325 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv26326 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What microRNAs target STAT3?"
   (:var mv26340 :isa target :agent mv26341 :object mv26335 :present "PRESENT" :raw-text "target")
   (:var mv26341 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "microRNAs")
   (:var mv26335 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these target SMAD2?"
   (:var mv26347 :isa target :|agent-OR-cause| mv26345 :object mv26342 :present "PRESENT" :raw-text
    "target")
   (:var mv26345 :isa these :quantifier mv26343 :word "these") (:var mv26343 :isa which)
   (:var mv26342 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Do any of these regulate IL2?" (:var mv26357 :isa polar-question :statement mv26355)
   (:var mv26355 :isa regulate :|agent-OR-cause| mv26353 :object mv26349 :raw-text "regulate")
   (:var mv26353 :isa these :quantifier mv26351 :word "these") (:var mv26351 :isa any :word "any")
   (:var mv26349 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What regulates STAT3?"
   (:var mv26360 :isa regulate :|agent-OR-cause| mv26359 :object mv26358 :present "PRESENT"
    :raw-text "regulates")
   (:var mv26359 :isa what)
   (:var mv26358 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve these?"
   (:var mv26364 :isa involve :theme mv26366 :object mv26365 :present "PRESENT")
   (:var mv26366 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26365 :isa these :word "these"))
  ("What are the targets of NG25?"
   (:var mv26369 :isa be :subject mv26368 :predicate mv26377 :present "PRESENT")
   (:var mv26368 :isa what)
   (:var mv26377 :isa target-protein :plural t :agent mv26367 :has-determiner "THE" :raw-text
    "targets")
   (:var mv26367 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("What is their most likely cellular location?"
   (:var mv26379 :isa be :subject mv26378 :predicate mv26385 :present "PRESENT")
   (:var mv26378 :isa what)
   (:var mv26385 :isa location-of :theme mv26380 :predication mv26383 :modifier mv26384)
   (:var mv26380 :isa pronoun/plural :word "their") (:var mv26383 :isa likely :comparative mv26381)
   (:var mv26381 :isa superlative-quantifier :name "most")
   (:var mv26384 :isa cellular :name "cellular"))
  ("Is ERK1 a transcription factor?" (:var mv26390 :isa polar-question :statement mv26388)
   (:var mv26388 :isa be :subject mv26386 :predicate mv26387)
   (:var mv26386 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv26387 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Is it a kinase?" (:var mv26395 :isa polar-question :statement mv26391)
   (:var mv26391 :isa be :subject mv26392 :predicate mv26394)
   (:var mv26392 :isa pronoun/inanimate :word "it")
   (:var mv26394 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What is PLX-4720?"
   (:var mv26398 :isa be :subject mv26397 :predicate mv26396 :present "PRESENT")
   (:var mv26397 :isa what)
   (:var mv26396 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What does it target?"
   (:var mv26403 :isa target :|affected-process-OR-object| mv26399 :|agent-OR-cause| mv26401
    :present "PRESENT" :raw-text "target")
   (:var mv26399 :isa what) (:var mv26401 :isa pronoun/inanimate :word "it"))
  ("What genes does STAT3 regulate?"
   (:var mv26409 :isa regulate :object mv26410 :agent mv26404 :present "PRESENT" :raw-text
    "regulate")
   (:var mv26410 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv26404 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways is it in?"
   (:var mv26414 :isa be :subject mv26417 :predicate mv26415 :present "PRESENT")
   (:var mv26417 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26415 :isa pronoun/inanimate :word "it"))
  ("What are the targets of PLX-4720?"
   (:var mv26420 :isa be :subject mv26419 :predicate mv26428 :present "PRESENT")
   (:var mv26419 :isa what)
   (:var mv26428 :isa target-protein :plural t :agent mv26418 :has-determiner "THE" :raw-text
    "targets")
   (:var mv26418 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("Does it target BRAF?" (:var mv26435 :isa polar-question :statement mv26434)
   (:var mv26434 :isa target :|agent-OR-cause| mv26430 :object mv26433 :raw-text "target")
   (:var mv26430 :isa pronoun/inanimate :word "it")
   (:var mv26433 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Tofacitinib inhibits JAK1 and active STAT3 transcribes IL2."
   (:var mv26440 :isa inhibit :agent mv26439 :object mv26444 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv26439 :isa drug :raw-text "Tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv26444 :isa collection :raw-text "JAK1 and active STAT3" :type protein :number 2 :items
    (mv26436 mv26437))
   (:var mv26436 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv26437 :isa protein :predication mv26442 :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv26442 :isa active))
  ("JAK1 activates STAT3"
   (:var mv26447 :isa bio-activate :agent mv26445 :object mv26446 :present "PRESENT" :raw-text
    "activates")
   (:var mv26445 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv26446 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("I want to find out how Jak1 activates IL2"
   (:var mv26453 :isa want :agent mv26450 :theme mv26463 :present "PRESENT")
   (:var mv26450 :isa interlocutor :name "speaker")
   (:var mv26463 :isa find-out :agent mv26450 :statement mv26460)
   (:var mv26460 :isa wh-question :statement mv26459 :var nil :wh how)
   (:var mv26459 :isa bio-activate :agent mv26448 :object mv26449 :present "PRESENT" :raw-text
    "activates")
   (:var mv26448 :isa protein :raw-text "Jak1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv26449 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells."
   (:var mv26469 :isa want :agent mv26466 :theme mv26485 :present "PRESENT")
   (:var mv26466 :isa interlocutor :name "speaker")
   (:var mv26485 :isa find-out :agent mv26466 :statement mv26482)
   (:var mv26482 :isa wh-question :statement mv26475 :var nil :wh how)
   (:var mv26475 :isa bio-activate :agent mv26464 :object mv26476 :present "PRESENT" :raw-text
    "activates")
   (:var mv26464 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv26476 :isa protein :cell-type mv26480 :raw-text "JUN" :uid "UP:P05412" :name
    "JUN_HUMAN")
   (:var mv26480 :isa cell-type :plural t :cell-line mv26465)
   (:var mv26465 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Let's build a model."
   (:var mv26490 :isa explicit-suggestion :suggestion mv26487 :marker let-as-directive)
   (:var mv26487 :isa build :artifact mv26489 :present "PRESENT")
   (:var mv26489 :isa model :has-determiner "A"))
  ("Mek phosphorylates MAPK; MapK phosphorylates RSK"
   (:var mv26492 :isa phosphorylate :agent mv26491 :substrate mv26493 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv26491 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv26493 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv26501 :isa regulate :agent mv26502 :object mv26497 :present "PRESENT" :raw-text
    "regulate")
   (:var mv26502 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26497 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What positively regulates IL2?"
   (:var mv26503 :isa upregulate :|agent-OR-cause| mv26505 :object mv26504 :present "PRESENT"
    :raw-text "positively regulates")
   (:var mv26505 :isa what)
   (:var mv26504 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What can have the effect of activation on STAT3?"
   (:var mv26509 :isa have :possessor mv26507 :thing-possessed mv26511 :modal mv26508)
   (:var mv26507 :isa what)
   (:var mv26511 :isa effect :object mv26506 :affected-process mv26514 :has-determiner "THE"
    :raw-text "effect")
   (:var mv26506 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26514 :isa bio-activate :raw-text "activation") (:var mv26508 :isa can))
  ("Are there any drugs for IL10?" (:var mv26530 :isa polar-question :statement mv26526)
   (:var mv26526 :isa there-exists :value mv26529 :predicate mv26520)
   (:var mv26529 :isa drug :plural t :target mv26518 :quantifier mv26522 :raw-text "drugs")
   (:var mv26518 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv26522 :isa any :word "any") (:var mv26520 :isa syntactic-there))
  ("Which tissues express STAT3?"
   (:var mv26535 :isa gene-transcript-express :agent mv26536 :object mv26531 :present "PRESENT"
    :raw-text "express")
   (:var mv26536 :isa tissue :plural t :has-determiner "WHICH")
   (:var mv26531 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How does MEK1 regulate ERK1?"
   (:var mv26541 :isa regulate :manner mv26539 :agent mv26537 :object mv26538 :present "PRESENT"
    :raw-text "regulate")
   (:var mv26539 :isa how)
   (:var mv26537 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv26538 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What are transcription factors that bind the IL15 and IL2 genes?"
   (:var mv26547 :isa be :subject mv26546 :predicate mv26557 :present "PRESENT")
   (:var mv26546 :isa what)
   (:var mv26557 :isa transcription-factor :plural t :predication mv26549 :raw-text
    "transcription factors")
   (:var mv26549 :isa binding :binder mv26557 :that-rel t :direct-bindee mv26556 :present "PRESENT"
    :raw-text "bind")
   (:var mv26556 :isa gene :plural t :has-determiner "THE" :expresses mv26554 :raw-text "genes")
   (:var mv26554 :isa collection :raw-text "IL15 and IL2" :type protein :number 2 :items
    (mv26544 mv26545))
   (:var mv26544 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv26545 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What kinases regulate the IL15 and IL2?"
   (:var mv26563 :isa regulate :agent mv26567 :object mv26566 :present "PRESENT" :raw-text
    "regulate")
   (:var mv26567 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26566 :isa collection :has-determiner "THE" :raw-text "IL15 and IL2" :type protein
    :number 2 :items (mv26558 mv26559))
   (:var mv26558 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv26559 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What factors from the literature regulate IL15 and IL2?"
   (:var mv26579 :isa factor :plural t :has-determiner "WHAT"))
  ("What relations in the literature match tofacitinib inhibits IL15?"
   (:var mv26592 :isa relation :plural t :has-determiner "WHAT"))
  ("What is MAP3K7?" (:var mv26596 :isa be :subject mv26595 :predicate mv26594 :present "PRESENT")
   (:var mv26595 :isa what)
   (:var mv26594 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Is MAP3K7 a protein?" (:var mv26601 :isa polar-question :statement mv26598)
   (:var mv26598 :isa be :subject mv26597 :predicate mv26600)
   (:var mv26597 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv26600 :isa protein :has-determiner "A" :raw-text "protein"))
  ("What does SMAD2 transcribe?"
   (:var mv26605 :isa transcribe :object mv26603 :agent mv26602 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv26603 :isa what)
   (:var mv26602 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Are there drugs for IL10?" (:var mv26616 :isa polar-question :statement mv26613)
   (:var mv26613 :isa there-exists :value mv26615 :predicate mv26608)
   (:var mv26615 :isa drug :plural t :target mv26606 :raw-text "drugs")
   (:var mv26606 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv26608 :isa syntactic-there))
  ("What relations in the literature match tofacitinib?"
   (:var mv26626 :isa relation :plural t :has-determiner "WHAT"))
  ("What relations in the literature match STAT3 regulates IL15 ?"
   (:var mv26639 :isa relation :plural t :has-determiner "WHAT"))))
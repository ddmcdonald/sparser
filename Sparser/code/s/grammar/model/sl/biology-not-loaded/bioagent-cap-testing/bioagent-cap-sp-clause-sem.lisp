(in-package :cl-user)
(defparameter *clause-semantics-list*
'(("Which of those genes are in the MAPK signaling pathway"
   (:var mv17634 :isa copular-predication-of-pp :item mv17631 :value mv17633 :prep "IN" :predicate
    mv17623)
   (:var mv17631 :isa gene :plural t :quantifier mv17618 :has-determiner "THOSE" :raw-text "genes")
   (:var mv17618 :isa which)
   (:var mv17633 :isa gene :plural t :context mv17617 :quantifier mv17618 :has-determiner "THOSE"
    :raw-text "genes")
   (:var mv17617 :isa signaling-pathway :has-determiner "THE" :modifier mv17626 :raw-text
    "signaling pathway")
   (:var mv17626 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv17623 :isa be :present "PRESENT"))
  ("Which of those genes are in the MAPK signaling pathway"
   (:var mv17653 :isa copular-predication-of-pp :item mv17650 :value mv17652 :prep "IN" :predicate
    mv17642)
   (:var mv17650 :isa gene :plural t :quantifier mv17637 :has-determiner "THOSE" :raw-text "genes")
   (:var mv17637 :isa which)
   (:var mv17652 :isa gene :plural t :context mv17636 :quantifier mv17637 :has-determiner "THOSE"
    :raw-text "genes")
   (:var mv17636 :isa signaling-pathway :has-determiner "THE" :modifier mv17645 :raw-text
    "signaling pathway")
   (:var mv17645 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv17642 :isa be :present "PRESENT"))
  ("What genes does mir-128 regulate?"
   (:var mv17660 :isa regulate :object mv17662 :agent mv17661 :present "PRESENT" :raw-text
    "regulate")
   (:var mv17662 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17661 :isa bio-entity :name "mir-128"))
  ("what transcription factors does miR-200c regulate?"
   (:var mv17668 :isa regulate :object mv17669 :agent mv17665 :present "PRESENT" :raw-text
    "regulate")
   (:var mv17669 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv17665 :isa micro-rna :raw-text "miR-200c" :name "MIR200C" :uid "NCIT:C82157"))
  ("Tell me about stat3's involvement in apoptosis"
   (:var mv17671 :isa tell :theme mv17675 :theme mv17672 :present "PRESENT")
   (:var mv17675 :isa involve :theme mv17677 :participant mv17674)
   (:var mv17677 :isa apoptosis :raw-text "apoptosis")
   (:var mv17674 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17672 :isa interlocutor :name "speaker"))
  ("What are the genes that have strong evidence of being regulated by mir-122-5p?"
   (:var mv17682 :isa be :subject mv17681 :predicate mv17697 :present "PRESENT")
   (:var mv17681 :isa what)
   (:var mv17697 :isa gene :plural t :predication mv17687 :has-determiner "THE" :raw-text "genes")
   (:var mv17687 :isa have :possessor mv17697 :that-rel t :thing-possessed mv17689 :present
    "PRESENT")
   (:var mv17689 :isa evidence :fact mv17692 :predication mv17688)
   (:var mv17692 :isa regulate :agent mv17680 :progressive mv17691 :raw-text "regulated")
   (:var mv17680 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv17691 :isa be) (:var mv17688 :isa strong))
  ("What is stat3's involvement in apoptosis?"
   (:var mv17700 :isa be :subject mv17699 :predicate mv17702 :present "PRESENT")
   (:var mv17699 :isa what) (:var mv17702 :isa involve :theme mv17704 :participant mv17701)
   (:var mv17704 :isa apoptosis :raw-text "apoptosis")
   (:var mv17701 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is stat3's role in apoptosis?"
   (:var mv17708 :isa be :subject mv17707 :predicate mv17710 :present "PRESENT")
   (:var mv17707 :isa what) (:var mv17710 :isa role :process mv17712 :participant mv17709)
   (:var mv17712 :isa apoptosis :raw-text "apoptosis")
   (:var mv17709 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is stat3's role in apoptotic regulation?"
   (:var mv17716 :isa be :subject mv17715 :predicate mv17718 :present "PRESENT")
   (:var mv17715 :isa what) (:var mv17718 :isa role :process mv17722 :participant mv17717)
   (:var mv17722 :isa regulate :cellular-process mv17720 :raw-text "regulation")
   (:var mv17720 :isa apoptosis :raw-text "apoptotic")
   (:var mv17717 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is the evidence that miR-148a-3p targets DNMT1?"
   (:var mv17727 :isa be :subject mv17726 :predicate mv17734 :present "PRESENT")
   (:var mv17726 :isa what) (:var mv17734 :isa evidence :statement mv17733 :has-determiner "THE")
   (:var mv17733 :isa target :agent mv17724 :object mv17725 :present "PRESENT" :raw-text "targets")
   (:var mv17724 :isa micro-rna :raw-text "miR-148a-3p" :name "microRNA 148a-3p" :uid
    "MIMAT0000243")
   (:var mv17725 :isa protein :raw-text "DNMT1" :uid "UP:P26358" :name "DNMT1_HUMAN"))
  ("what transcription factors does miR-124-3p regulate?"
   (:var mv17740 :isa regulate :object mv17741 :agent mv17737 :present "PRESENT" :raw-text
    "regulate")
   (:var mv17741 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv17737 :isa micro-rna :raw-text "miR-124-3p" :name "microRNA 124-3p" :uid
    "MIMAT0000422"))
  ("what transcription factors does miR-200c-3p regulate?"
   (:var mv17747 :isa regulate :object mv17748 :agent mv17744 :present "PRESENT" :raw-text
    "regulate")
   (:var mv17748 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv17744 :isa micro-rna :raw-text "miR-200c-3p" :name "microRNA 200c-3p" :uid
    "MIMAT0000617"))
  ("What is the mutation significance of TP53 in ovarian cancer?"
   (:var mv17752 :isa be :subject mv17751 :predicate mv17755 :present "PRESENT")
   (:var mv17751 :isa what)
   (:var mv17755 :isa significance :context mv17750 :agent mv17749 :has-determiner "THE" :modifier
    mv17754)
   (:var mv17750 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv17749 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv17754 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 for ovarian cancer?"
   (:var mv17763 :isa be :subject mv17762 :predicate mv17766 :present "PRESENT")
   (:var mv17762 :isa what)
   (:var mv17766 :isa significance :context mv17761 :agent mv17760 :has-determiner "THE" :modifier
    mv17765)
   (:var mv17761 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv17760 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv17765 :isa mutation :raw-text "mutation"))
  ("What are synonyms for BRAF?"
   (:var mv17772 :isa be :subject mv17771 :predicate mv17778 :present "PRESENT")
   (:var mv17771 :isa what) (:var mv17778 :isa has-synonym :plural t :item mv17776)
   (:var mv17776 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some genes that are mutated in breast cancer?"
   (:var mv17781 :isa be :subject mv17780 :predicate mv17792 :present "PRESENT")
   (:var mv17780 :isa what)
   (:var mv17792 :isa gene :plural t :predication mv17790 :quantifier mv17782 :raw-text "genes")
   (:var mv17790 :isa mutation :object mv17792 :that-rel t :context mv17779 :present "PRESENT"
    :raw-text "mutated")
   (:var mv17779 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv17782 :isa some :word "some"))
  ("what genes are mutated in breast cancer?"
   (:var mv17801 :isa mutation :object mv17800 :context mv17793 :present "PRESENT" :raw-text
    "mutated")
   (:var mv17800 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17793 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Does phosphorylation at S221 activate MAP2K2?"
   (:var mv17815 :isa polar-question :statement mv17813)
   (:var mv17813 :isa bio-activate :agent mv17805 :object mv17803 :raw-text "activate")
   (:var mv17805 :isa phosphorylate :site mv17812 :raw-text "phosphorylation")
   (:var mv17812 :isa residue-on-protein :raw-text "S221" :position mv17810 :amino-acid mv17808)
   (:var mv17810 :isa number :value 221) (:var mv17808 :isa amino-acid :name "serine" :letter "S")
   (:var mv17803 :isa protein :raw-text "MAP2K2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Does phosphorylation at S222 activate MAP2K1?"
   (:var mv17828 :isa polar-question :statement mv17826)
   (:var mv17826 :isa bio-activate :agent mv17818 :object mv17816 :raw-text "activate")
   (:var mv17818 :isa phosphorylate :site mv17825 :raw-text "phosphorylation")
   (:var mv17825 :isa residue-on-protein :raw-text "S222" :position mv17823 :amino-acid mv17821)
   (:var mv17823 :isa number :value 222) (:var mv17821 :isa amino-acid :name "serine" :letter "S")
   (:var mv17816 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Simulate the MAP2K1-MAPK1 complex"
   (:var mv17831 :isa simulate :object mv17835 :present "PRESENT" :raw-text "Simulate")
   (:var mv17835 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv17830
    :component mv17829)
   (:var mv17830 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv17829 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What are the members of ERK?"
   (:var mv17837 :isa be :subject mv17836 :predicate mv17845 :present "PRESENT")
   (:var mv17836 :isa what) (:var mv17845 :isa member :plural t :set mv17842 :has-determiner "THE")
   (:var mv17842 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the members of MEK?"
   (:var mv17847 :isa be :subject mv17846 :predicate mv17855 :present "PRESENT")
   (:var mv17846 :isa what) (:var mv17855 :isa member :plural t :set mv17852 :has-determiner "THE")
   (:var mv17852 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What are the members of RAF?"
   (:var mv17857 :isa be :subject mv17856 :predicate mv17865 :present "PRESENT")
   (:var mv17856 :isa what) (:var mv17865 :isa member :plural t :set mv17862 :has-determiner "THE")
   (:var mv17862 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What are the members of the RAF family?"
   (:var mv17867 :isa be :subject mv17866 :predicate mv17879 :present "PRESENT")
   (:var mv17866 :isa what) (:var mv17879 :isa member :plural t :set mv17877 :has-determiner "THE")
   (:var mv17877 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What are the members of the RAS family?"
   (:var mv17882 :isa be :subject mv17881 :predicate mv17890 :present "PRESENT")
   (:var mv17881 :isa what) (:var mv17890 :isa member :plural t :set mv17880 :has-determiner "THE")
   (:var mv17880 :isa protein-family :has-determiner "THE" :raw-text "RAS family" :name "Ras"
    :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What is another name for BRAF?"
   (:var mv17892 :isa be :subject mv17891 :predicate mv17895 :present "PRESENT")
   (:var mv17891 :isa what) (:var mv17895 :isa has-name :item mv17898 :quantifier mv17893)
   (:var mv17898 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17893 :isa another :word "another"))
  ("What is another name for MAP2K1?"
   (:var mv17902 :isa be :subject mv17901 :predicate mv17905 :present "PRESENT")
   (:var mv17901 :isa what) (:var mv17905 :isa has-name :item mv17900 :quantifier mv17903)
   (:var mv17900 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv17903 :isa another :word "another"))
  ("How does STAT3 affect c-fos"
   (:var mv17913 :isa affect :manner mv17911 :agent mv17909 :object mv17910 :present "PRESENT"
    :raw-text "affect")
   (:var mv17911 :isa how)
   (:var mv17909 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17910 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List some genes regulated by elk1" (:var mv17915 :isa list :theme mv17921 :present "PRESENT")
   (:var mv17921 :isa gene :plural t :predication mv17919 :quantifier mv17916 :raw-text "genes")
   (:var mv17919 :isa regulate :object mv17921 :agent mv17914 :past "PAST" :raw-text "regulated")
   (:var mv17914 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17916 :isa some :word "some"))
  ("List some of the genes regulated by elk1"
   (:var mv17925 :isa list :theme mv17936 :present "PRESENT")
   (:var mv17936 :isa gene :plural t :predication mv17931 :quantifier mv17926 :has-determiner "THE"
    :raw-text "genes")
   (:var mv17931 :isa regulate :object mv17936 :agent mv17924 :past "PAST" :raw-text "regulated")
   (:var mv17924 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17926 :isa some :word "some"))
  ("List the genes regulated by elk1" (:var mv17940 :isa list :theme mv17946 :present "PRESENT")
   (:var mv17946 :isa gene :plural t :predication mv17944 :has-determiner "THE" :raw-text "genes")
   (:var mv17944 :isa regulate :object mv17946 :agent mv17939 :past "PAST" :raw-text "regulated")
   (:var mv17939 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What are the common upstream regulators of AKT1 and BRAF?"
   (:var mv17951 :isa be :subject mv17950 :predicate mv17966 :present "PRESENT")
   (:var mv17950 :isa what)
   (:var mv17966 :isa regulator :plural t :theme mv17961 :has-determiner "THE" :predication mv17953
    :context mv17954 :raw-text "regulators")
   (:var mv17961 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv17949 mv17960))
   (:var mv17949 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv17960 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17953 :isa common) (:var mv17954 :isa upstream-segment :raw-text "upstream"))
  ("What are the common upstreams of AKT and BRAF?"
   (:var mv17968 :isa be :subject mv17967 :predicate mv17981 :present "PRESENT")
   (:var mv17967 :isa what)
   (:var mv17981 :isa upstream-segment :plural t :pathwaycomponent mv17977 :has-determiner "THE"
    :predication mv17970 :raw-text "upstreams")
   (:var mv17977 :isa collection :raw-text "AKT and BRAF" :type protein-family :number 2 :items
    (mv17974 mv17976))
   (:var mv17974 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066")
   (:var mv17976 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17970 :isa common))
  ("What are the common upstreams of AKT1 and BRAF?"
   (:var mv17984 :isa be :subject mv17983 :predicate mv17996 :present "PRESENT")
   (:var mv17983 :isa what)
   (:var mv17996 :isa upstream-segment :plural t :pathwaycomponent mv17992 :has-determiner "THE"
    :predication mv17986 :raw-text "upstreams")
   (:var mv17992 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv17982 mv17991))
   (:var mv17982 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv17991 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17986 :isa common))
  ("What are the genes that smad2 regulates?"
   (:var mv17999 :isa be :subject mv17998 :predicate mv18006 :present "PRESENT")
   (:var mv17998 :isa what)
   (:var mv18006 :isa gene :plural t :predication mv18004 :has-determiner "THE" :raw-text "genes")
   (:var mv18004 :isa regulate :object mv18006 :that-rel t :agent mv17997 :present "PRESENT"
    :raw-text "regulates")
   (:var mv17997 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv18011 :isa be :subject mv18010 :predicate mv18022 :present "PRESENT")
   (:var mv18010 :isa what)
   (:var mv18022 :isa micro-rna :plural t :predication mv18016 :has-determiner "THE" :raw-text
    "miRNAs")
   (:var mv18016 :isa regulate :agent mv18022 :that-rel t :object mv18020 :present "PRESENT"
    :raw-text "regulate")
   (:var mv18020 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number
    5 :items (mv18017 mv18018 mv18007 mv18008 mv18009))
   (:var mv18017 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv18018 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv18007 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18008 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv18009 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the miRNAs that regulate EGFR, SRF, and STAT3"
   (:var mv18025 :isa be :subject mv18024 :predicate mv18036 :present "PRESENT")
   (:var mv18024 :isa what)
   (:var mv18036 :isa micro-rna :plural t :predication mv18030 :has-determiner "THE" :raw-text
    "miRNAs")
   (:var mv18030 :isa regulate :agent mv18036 :that-rel t :object mv18034 :present "PRESENT"
    :raw-text "regulate")
   (:var mv18034 :isa collection :raw-text "EGFR, SRF, and STAT3" :type protein :number 3 :items
    (mv18031 mv18032 mv18023))
   (:var mv18031 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv18032 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv18023 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the regulators of SRF?"
   (:var mv18038 :isa be :subject mv18037 :predicate mv18046 :present "PRESENT")
   (:var mv18037 :isa what)
   (:var mv18046 :isa regulator :plural t :theme mv18043 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv18043 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does STAT3 regulate in the liver?"
   (:var mv18050 :isa regulate :|affected-process-OR-object| mv18048 :agent mv18047 :organ mv18053
    :present "PRESENT" :raw-text "regulate")
   (:var mv18048 :isa what)
   (:var mv18047 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18053 :isa liver :has-determiner "THE"))
  ("What does it regulate in the liver?"
   (:var mv18058 :isa regulate :|affected-process-OR-object| mv18055 :|agent-OR-cause| mv18057
    :organ mv18061 :present "PRESENT" :raw-text "regulate")
   (:var mv18055 :isa what) (:var mv18057 :isa pronoun/inanimate :word "it")
   (:var mv18061 :isa liver :has-determiner "THE"))
  ("What genes are regulated by SMAD2?"
   (:var mv18071 :isa regulate :object mv18070 :agent mv18063 :present "PRESENT" :raw-text
    "regulated")
   (:var mv18070 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv18063 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes are regulated by SMDA2?"
   (:var mv18083 :isa regulate :object mv18082 :agent mv18081 :present "PRESENT" :raw-text
    "regulated")
   (:var mv18082 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv18081 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by SRF?"
   (:var mv18093 :isa regulate :object mv18092 :agent mv18091 :present "PRESENT" :raw-text
    "regulated")
   (:var mv18092 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv18091 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which of these are regulated by SMAD2?"
   (:var mv18102 :isa regulate :|affected-process-OR-object| mv18098 :agent mv18095 :present
    "PRESENT" :raw-text "regulated")
   (:var mv18098 :isa these :quantifier mv18096 :word "these") (:var mv18096 :isa which)
   (:var mv18095 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by SMDA2?"
   (:var mv18112 :isa regulate :|affected-process-OR-object| mv18108 :agent mv18105 :present
    "PRESENT" :raw-text "regulated")
   (:var mv18108 :isa these :quantifier mv18106 :word "these") (:var mv18106 :isa which)
   (:var mv18105 :isa bio-entity :name "SMDA2"))
  ("Which pathways use these?"
   (:var mv18119 :isa bio-use :agent mv18121 :object mv18120 :present "PRESENT" :raw-text "use")
   (:var mv18121 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv18120 :isa these :word "these"))
  ("Where does STAT3 regulate the expression of c-fos?"
   (:var mv18126 :isa regulate :location mv18124 :agent mv18122 :affected-process mv18128 :present
    "PRESENT" :raw-text "regulate")
   (:var mv18124 :isa where)
   (:var mv18122 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18128 :isa gene-transcript-express :object mv18123 :has-determiner "THE" :raw-text
    "expression")
   (:var mv18123 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("can you tell me all the transcription factors that are shared by elk1 and srf"
   (:var mv18152 :isa polar-question :statement mv18136)
   (:var mv18136 :isa tell :agent mv18135 :theme mv18151 :beneficiary mv18137 :modal "CAN")
   (:var mv18135 :isa interlocutor :name "hearer")
   (:var mv18151 :isa transcription-factor :plural t :predication mv18149 :quantifier mv18138
    :has-determiner "THE" :raw-text "transcription factors")
   (:var mv18149 :isa share :object mv18151 :that-rel t :participant mv18146 :modal "CAN" :raw-text
    "shared")
   (:var mv18146 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv18133 mv18145))
   (:var mv18133 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18145 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv18138 :isa all :word "all") (:var mv18137 :isa interlocutor :name "speaker"))
  ("can you tell me which transcription factors are shared by elk1 and srf"
   (:var mv18170 :isa polar-question :statement mv18158)
   (:var mv18158 :isa tell :agent mv18157 :theme mv18168 :beneficiary mv18159 :modal "CAN")
   (:var mv18157 :isa interlocutor :name "hearer")
   (:var mv18168 :isa share :object mv18167 :participant mv18166 :modal "CAN" :raw-text "shared")
   (:var mv18167 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv18166 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv18155 mv18165))
   (:var mv18155 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18165 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv18159 :isa interlocutor :name "speaker"))
  ("what are the regulators of SRF?"
   (:var mv18172 :isa be :subject mv18171 :predicate mv18180 :present "PRESENT")
   (:var mv18171 :isa what)
   (:var mv18180 :isa regulator :plural t :theme mv18177 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv18177 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("what does stat regulate"
   (:var mv18184 :isa regulate :|affected-process-OR-object| mv18181 :agent mv18183 :present
    "PRESENT" :raw-text "regulate")
   (:var mv18181 :isa what)
   (:var mv18183 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("what is erbb?" (:var mv18186 :isa be :subject mv18185 :predicate mv18187 :present "PRESENT")
   (:var mv18185 :isa what)
   (:var mv18187 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("Is STAT3 involved in apoptosis?" (:var mv18194 :isa polar-question :statement mv18190)
   (:var mv18190 :isa involve :object mv18188 :theme mv18192 :past "PAST")
   (:var mv18188 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18192 :isa apoptosis :raw-text "apoptosis"))
  ("Is STAT3 involved in apoptotic regulation?"
   (:var mv18203 :isa polar-question :statement mv18197)
   (:var mv18197 :isa involve :object mv18195 :theme mv18201 :past "PAST")
   (:var mv18195 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18201 :isa regulate :cellular-process mv18199 :raw-text "regulation")
   (:var mv18199 :isa apoptosis :raw-text "apoptotic"))
  ("Is STAT3 involved in regulating apoptosis?"
   (:var mv18211 :isa polar-question :statement mv18206)
   (:var mv18206 :isa involve :object mv18204 :theme mv18208 :past "PAST")
   (:var mv18204 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18208 :isa regulate :affected-process mv18209 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv18209 :isa apoptosis :raw-text "apoptosis"))
  ("What apoptotic genes are regulated by STAT3"
   (:var mv18223 :isa regulate :object mv18222 :agent mv18212 :present "PRESENT" :raw-text
    "regulated")
   (:var mv18222 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv18214 :raw-text
    "genes")
   (:var mv18214 :isa apoptosis :raw-text "apoptotic")
   (:var mv18212 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the apoptotic genes" (:var mv18225 :isa list :theme mv18232 :present "PRESENT")
   (:var mv18232 :isa gene :plural t :has-determiner "THE" :cellular-process mv18227 :raw-text
    "genes")
   (:var mv18227 :isa apoptosis :raw-text "apoptotic"))
  ("What genes regulated by STAT3 are involved in apoptosis?"
   (:var mv18244 :isa involve :object mv18247 :theme mv18242 :present "PRESENT")
   (:var mv18247 :isa gene :plural t :predication mv18237 :has-determiner "WHAT" :raw-text "genes")
   (:var mv18237 :isa regulate :object mv18247 :agent mv18233 :past "PAST" :raw-text "regulated")
   (:var mv18233 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18242 :isa apoptosis :raw-text "apoptosis"))
  ("List genes regulated by STAT3" (:var mv18249 :isa list :theme mv18251 :present "PRESENT")
   (:var mv18251 :isa gene :plural t :predication mv18252 :raw-text "genes")
   (:var mv18252 :isa regulate :object mv18251 :agent mv18248 :past "PAST" :raw-text "regulated")
   (:var mv18248 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are involved in apoptosis?"
   (:var mv18264 :isa involve :object mv18263 :theme mv18262 :present "PRESENT")
   (:var mv18263 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv18262 :isa apoptosis :raw-text "apoptosis"))
  ("What genes that STAT3 regulates are involved in apoptosis?"
   (:var mv18277 :isa involve :object mv18279 :theme mv18275 :present "PRESENT")
   (:var mv18279 :isa gene :plural t :predication mv18271 :has-determiner "WHAT" :raw-text "genes")
   (:var mv18271 :isa regulate :object mv18279 :that-rel t :agent mv18266 :present "PRESENT"
    :raw-text "regulates")
   (:var mv18266 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18275 :isa apoptosis :raw-text "apoptosis"))
  ("List the genes regulated by STAT3" (:var mv18281 :isa list :theme mv18287 :present "PRESENT")
   (:var mv18287 :isa gene :plural t :predication mv18285 :has-determiner "THE" :raw-text "genes")
   (:var mv18285 :isa regulate :object mv18287 :agent mv18280 :past "PAST" :raw-text "regulated")
   (:var mv18280 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the STAT3 regulated genes" (:var mv18291 :isa list :theme mv18297 :present "PRESENT")
   (:var mv18297 :isa gene :plural t :has-determiner "THE" :predication mv18293 :raw-text "genes")
   (:var mv18293 :isa regulate :object mv18297 :agent mv18290 :raw-text "regulated")
   (:var mv18290 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What kinases are regulated by STAT3?"
   (:var mv18306 :isa regulate :object mv18305 :agent mv18298 :present "PRESENT" :raw-text
    "regulated")
   (:var mv18305 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv18298 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What kinases are involved in apoptosis?"
   (:var mv18316 :isa involve :object mv18315 :theme mv18314 :present "PRESENT")
   (:var mv18315 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv18314 :isa apoptosis :raw-text "apoptosis"))
  ("What STAT3 regulated genes are involved in aptosis"
   (:var mv18329 :isa involve :object mv18328 :present "PRESENT")
   (:var mv18328 :isa gene :plural t :has-determiner "WHAT" :predication mv18320 :raw-text "genes")
   (:var mv18320 :isa regulate :object mv18328 :agent mv18318 :raw-text "regulated")
   (:var mv18318 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Let me know if any of the genes stat3 regulates are involved in apoptosis"
   (:var mv18332 :isa let :complement mv18353 :present "PRESENT")
   (:var mv18353 :isa know :agent mv18333 :statement mv18352 :present "PRESENT")
   (:var mv18333 :isa interlocutor :name "speaker")
   (:var mv18352 :isa wh-question :statement mv18347 :wh if)
   (:var mv18347 :isa involve :object mv18351 :theme mv18345 :present "PRESENT")
   (:var mv18351 :isa gene :plural t :quantifier mv18336 :predication mv18341 :has-determiner "THE"
    :raw-text "genes")
   (:var mv18336 :isa any :word "any")
   (:var mv18341 :isa regulate :object mv18351 :agent mv18331 :present "PRESENT" :raw-text
    "regulates")
   (:var mv18331 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18345 :isa apoptosis :raw-text "apoptosis"))
  ("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
   (:var mv18355 :isa let :complement mv18377 :present "PRESENT")
   (:var mv18377 :isa know :agent mv18356 :statement mv18376 :present "PRESENT")
   (:var mv18356 :isa interlocutor :name "speaker")
   (:var mv18376 :isa wh-question :statement mv18371 :wh whether)
   (:var mv18371 :isa involve :object mv18375 :theme mv18369 :present "PRESENT")
   (:var mv18375 :isa gene :plural t :quantifier mv18360 :predication mv18365 :has-determiner "THE"
    :raw-text "genes")
   (:var mv18360 :isa any :word "any")
   (:var mv18365 :isa regulate :object mv18375 :agent mv18354 :present "PRESENT" :raw-text
    "regulates")
   (:var mv18354 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18369 :isa apoptosis :raw-text "apoptosis"))
  ("Look up which genes targeted by stat3 are involved in apoptosis" (:var mv18396 :isa look-up))
  ("Tell me how stat3 is involved in apoptosis"
   (:var mv18398 :isa tell :beneficiary mv18399 :present "PRESENT")
   (:var mv18399 :isa interlocutor :name "speaker"))
  ("Tell me if stat3 is involved in apoptosis"
   (:var mv18409 :isa tell :theme mv18418 :beneficiary mv18410 :present "PRESENT")
   (:var mv18418 :isa wh-question :statement mv18416 :wh if)
   (:var mv18416 :isa involve :object mv18408 :theme mv18415 :present "PRESENT")
   (:var mv18408 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18415 :isa apoptosis :raw-text "apoptosis")
   (:var mv18410 :isa interlocutor :name "speaker"))
  ("Tell me whether stat3 is involved in apoptosis"
   (:var mv18420 :isa tell :theme mv18430 :theme mv18421 :present "PRESENT")
   (:var mv18430 :isa wh-question :statement mv18428 :wh whether)
   (:var mv18428 :isa involve :object mv18419 :theme mv18427 :present "PRESENT")
   (:var mv18419 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18427 :isa apoptosis :raw-text "apoptosis")
   (:var mv18421 :isa interlocutor :name "speaker"))
  ("What are STAT3 regulated genes that are involved in apoptosis."
   (:var mv18433 :isa be :subject mv18432 :predicate mv18445 :present "PRESENT")
   (:var mv18432 :isa what)
   (:var mv18445 :isa gene :plural t :predication mv18443 :predication mv18434 :raw-text "genes")
   (:var mv18443 :isa involve :object mv18445 :that-rel t :theme mv18441 :present "PRESENT")
   (:var mv18441 :isa apoptosis :raw-text "apoptosis")
   (:var mv18434 :isa regulate :object mv18445 :agent mv18431 :raw-text "regulated")
   (:var mv18431 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are STAT3 regulated genes that are involved in apoptosis?"
   (:var mv18448 :isa be :subject mv18447 :predicate mv18460 :present "PRESENT")
   (:var mv18447 :isa what)
   (:var mv18460 :isa gene :plural t :predication mv18458 :predication mv18449 :raw-text "genes")
   (:var mv18458 :isa involve :object mv18460 :that-rel t :theme mv18456 :present "PRESENT")
   (:var mv18456 :isa apoptosis :raw-text "apoptosis")
   (:var mv18449 :isa regulate :object mv18460 :agent mv18446 :raw-text "regulated")
   (:var mv18446 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes downstream of stat3 are involved in apoptosis?"
   (:var mv18472 :isa involve :object mv18465 :theme mv18471 :present "PRESENT")
   (:var mv18465 :isa downstream-segment :pathwaycomponent mv18461 :has-determiner "WHAT" :modifier
    mv18464 :raw-text "downstream")
   (:var mv18461 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18464 :isa gene :plural t :raw-text "genes")
   (:var mv18471 :isa apoptosis :raw-text "apoptosis"))
  ("What is the involvement of stat3 in apoptotic regulation?"
   (:var mv18477 :isa be :subject mv18476 :predicate mv18479 :present "PRESENT")
   (:var mv18476 :isa what)
   (:var mv18479 :isa involve :theme mv18484 :participant mv18475 :has-determiner "THE")
   (:var mv18484 :isa regulate :cellular-process mv18482 :raw-text "regulation")
   (:var mv18482 :isa apoptosis :raw-text "apoptotic")
   (:var mv18475 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve calcium?"
   (:var mv18490 :isa involve :theme mv18492 :object mv18491 :present "PRESENT")
   (:var mv18492 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv18491 :isa calcium :raw-text "calcium"))
  ("What processes involve srf"
   (:var mv18498 :isa involve :theme mv18500 :object mv18499 :present "PRESENT")
   (:var mv18500 :isa bio-process :plural t :has-determiner "WHAT" :raw-text "processes")
   (:var mv18499 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which stat3 regulated genes are involved in apoptosis?"
   (:var mv18512 :isa involve :object mv18511 :theme mv18509 :present "PRESENT")
   (:var mv18511 :isa gene :plural t :has-determiner "WHICH" :predication mv18503 :raw-text
    "genes")
   (:var mv18503 :isa regulate :object mv18511 :agent mv18501 :raw-text "regulated")
   (:var mv18501 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18509 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3 regulated genes in the liver are involved in apoptosis?"
   (:var mv18528 :isa involve :object mv18531 :theme mv18525 :present "PRESENT")
   (:var mv18531 :isa gene :plural t :organ mv18521 :has-determiner "WHICH" :predication mv18516
    :raw-text "genes")
   (:var mv18521 :isa liver :has-determiner "THE")
   (:var mv18516 :isa regulate :object mv18531 :agent mv18514 :raw-text "regulated")
   (:var mv18514 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18525 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3-regulated genes are involved in apoptosis?"
   (:var mv18543 :isa involve :object mv18542 :theme mv18540 :present "PRESENT")
   (:var mv18542 :isa gene :plural t :has-determiner "WHICH" :predication mv18534 :raw-text
    "genes")
   (:var mv18534 :isa regulate :object mv18542 :agent mv18532 :raw-text "regulated")
   (:var mv18532 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18540 :isa apoptosis :raw-text "apoptosis"))
  ("Mek activates MAPK1."
   (:var mv18547 :isa bio-activate :agent mv18546 :object mv18545 :present "PRESENT" :raw-text
    "activates")
   (:var mv18546 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv18545 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("NRAS activates RAF."
   (:var mv18549 :isa bio-activate :agent mv18548 :object mv18550 :present "PRESENT" :raw-text
    "activates")
   (:var mv18548 :isa protein :raw-text "NRAS" :uid "UP:P01111" :name "RASN_HUMAN")
   (:var mv18550 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("MAPK1 phosphorylates ELK1"
   (:var mv18553 :isa phosphorylate :agent mv18551 :substrate mv18552 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv18551 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv18552 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1"
   (:var mv18556 :isa dephosphorylate :agent mv18554 :substrate mv18555 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv18554 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv18555 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("ELK1 positively regulates FOS."
   (:var mv18558 :isa upregulate :agent mv18557 :object mv18559 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv18557 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18559 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("EGFR binds the growth factor ligand EGF."
   (:var mv18563 :isa binding :binder mv18562 :direct-bindee mv18566 :present "PRESENT" :raw-text
    "binds")
   (:var mv18562 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv18566 :isa protein :has-determiner "THE" :modifier mv18561 :modifier mv18565 :raw-text
    "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv18561 :isa growth-factor :raw-text "growth factor")
   (:var mv18565 :isa ligand :raw-text "ligand"))
  ("revert that" (:var mv18567 :isa revert :present "PRESENT" :raw-text "revert"))
  ("The EGFR-EGF complex binds another EGFR-EGF complex."
   (:var mv18573 :isa binding :binder mv18580 :direct-bindee mv18581 :present "PRESENT" :raw-text
    "binds")
   (:var mv18580 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGF" :component mv18571
    :component mv18570)
   (:var mv18571 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv18570 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv18581 :isa bio-complex :quantifier mv18574 :raw-text "EGFR-EGF" :component mv18576
    :component mv18575)
   (:var mv18574 :isa another :word "another")
   (:var mv18576 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv18575 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("The EGFR-EGFR complex binds GRB2."
   (:var mv18587 :isa binding :binder mv18589 :direct-bindee mv18582 :present "PRESENT" :raw-text
    "binds")
   (:var mv18589 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGFR" :component mv18584
    :component mv18584)
   (:var mv18584 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv18582 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("undo that" (:var mv18590 :isa undo :present "PRESENT" :raw-text "undo"))
  ("EGFR-bound GRB2 binds SOS1."
   (:var mv18596 :isa binding :binder mv18592 :direct-bindee mv18593 :present "PRESENT" :raw-text
    "binds")
   (:var mv18592 :isa protein :predication mv18595 :raw-text "GRB2" :uid "UP:P62993" :name
    "GRB2_HUMAN")
   (:var mv18595 :isa binding :direct-bindee mv18592 :binder mv18594 :raw-text "bound")
   (:var mv18594 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv18593 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN"))
  ("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
   (:var mv18600 :isa binding :binder mv18598 :direct-bindee mv18601 :present "PRESENT" :raw-text
    "binds")
   (:var mv18598 :isa protein :predication mv18599 :raw-text "SOS1" :uid "UP:Q07889" :name
    "SOS1_HUMAN")
   (:var mv18599 :isa binding :direct-bindee mv18598 :binder mv18597 :raw-text "bound")
   (:var mv18597 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN")
   (:var mv18601 :isa protein :predication mv18608 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv18608 :isa binding :direct-bindee mv18601 :that-rel t :bindee mv18607 :present "PRESENT"
    :negation mv18604 :raw-text "bound")
   (:var mv18607 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv18604 :isa not :word "not"))
  ("SOS1-bound NRAS binds GTP."
   (:var mv18613 :isa binding :binder mv18612 :direct-bindee mv18614 :present "PRESENT" :raw-text
    "binds")
   (:var mv18612 :isa protein :predication mv18611 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv18611 :isa binding :direct-bindee mv18612 :binder mv18610 :raw-text "bound")
   (:var mv18610 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv18614 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP"))
  ("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
   (:var mv18624 :isa binding :binder mv18618 :direct-bindee mv18625 :present "PRESENT" :raw-text
    "binds")
   (:var mv18618 :isa protein :predication mv18626 :predication mv18617 :raw-text "NRAS" :uid
    "UP:P01111" :name "RASN_HUMAN")
   (:var mv18626 :isa binding :direct-bindee mv18618 :that-rel t :bindee mv18615 :present "PRESENT"
    :negation mv18621 :raw-text "bound")
   (:var mv18615 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv18621 :isa not :word "not")
   (:var mv18617 :isa binding :direct-bindee mv18618 :binder mv18616 :raw-text "bound")
   (:var mv18616 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP")
   (:var mv18625 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Undo" (:var mv18628 :isa undo :present "PRESENT" :raw-text "Undo"))
  ("How does BRAF affect MAP2K1?"
   (:var mv18633 :isa affect :manner mv18630 :agent mv18632 :object mv18629 :present "PRESENT"
    :raw-text "affect")
   (:var mv18630 :isa how)
   (:var mv18632 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv18629 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's highlight the downstream of AKT1."
   (:var mv18642 :isa explicit-suggestion :suggestion mv18636 :marker let-as-directive)
   (:var mv18636 :isa highlight :theme mv18638 :present "PRESENT")
   (:var mv18638 :isa downstream-segment :pathwaycomponent mv18635 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv18635 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated MAPK1 to the bottom."
   (:var mv18652 :isa explicit-suggestion :suggestion mv18646 :marker let-as-directive)
   (:var mv18646 :isa move-to :goal mv18650 :theme mv18644 :present "PRESENT")
   (:var mv18650 :isa bottom :has-determiner "THE")
   (:var mv18644 :isa protein :predication mv18647 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18647 :isa phosphorylate :substrate mv18644 :raw-text "phosphorylated"))
  ("Let's put AKT1, MAPK1 into mitochondrion."
   (:var mv18661 :isa explicit-suggestion :suggestion mv18657 :marker let-as-directive)
   (:var mv18657 :isa put-something-somewhere :theme mv18654 :present "PRESENT")
   (:var mv18654 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show AKT1 on the top."
   (:var mv18669 :isa explicit-suggestion :suggestion mv18664 :marker let-as-directive)
   (:var mv18664 :isa show :at-relative-location mv18667 :|statement-OR-theme| mv18663 :present
    "PRESENT")
   (:var mv18667 :isa top-qua-location :has-determiner "THE")
   (:var mv18663 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Does ELK1 decrease FOS in the model?" (:var mv18680 :isa polar-question :statement mv18678)
   (:var mv18678 :isa decrease :agent mv18670 :object mv18674 :raw-text "decrease")
   (:var mv18670 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18674 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does ELK1 decrease the amount of FOS in the model?"
   (:var mv18695 :isa polar-question :statement mv18692)
   (:var mv18692 :isa decrease :agent mv18681 :|affected-process-OR-object| mv18686 :raw-text
    "decrease")
   (:var mv18681 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18686 :isa bio-amount :measured-item mv18688 :has-determiner "THE" :raw-text "amount")
   (:var mv18688 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does FOS decrease ELK1 in the model?" (:var mv18706 :isa polar-question :statement mv18704)
   (:var mv18704 :isa decrease :agent mv18698 :object mv18696 :raw-text "decrease")
   (:var mv18698 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18696 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Does FOS vanish if we increase the amount of ELK1 10 fold?"
   (:var mv18729 :isa polar-question :statement mv18728)
   (:var mv18728 :isa event-relation :subordinated-event mv18726 :event mv18723)
   (:var mv18726 :isa wh-question :statement mv18724 :wh if)
   (:var mv18724 :isa increase :|agent-OR-cause| mv18712 :level mv18722
    :|affected-process-OR-object| mv18716 :raw-text "increase")
   (:var mv18712 :isa interlocutor :name "person-and-machine")
   (:var mv18722 :isa measurement :number mv18719) (:var mv18719 :isa number :value 10)
   (:var mv18716 :isa bio-amount :measured-item mv18707 :has-determiner "THE" :raw-text "amount")
   (:var mv18707 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18723 :isa vanish :agent mv18709 :raw-text "vanish")
   (:var mv18709 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
   (:var mv18754 :isa polar-question :statement mv18753)
   (:var mv18753 :isa event-relation :subordinated-event mv18751 :event mv18747)
   (:var mv18751 :isa wh-question :statement mv18748 :wh if)
   (:var mv18748 :isa increase :|agent-OR-cause| mv18735 :|multiplier-OR-cause| mv18746
    :|affected-process-OR-object| mv18739 :raw-text "increase")
   (:var mv18735 :isa interlocutor :name "person-and-machine")
   (:var mv18746 :isa measurement :number mv18743) (:var mv18743 :isa number :value 10)
   (:var mv18739 :isa bio-amount :measured-item mv18730 :has-determiner "THE" :raw-text "amount")
   (:var mv18730 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18747 :isa vanish :agent mv18732 :raw-text "vanish")
   (:var mv18732 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
   (:var mv18776 :isa polar-question :statement mv18775)
   (:var mv18775 :isa event-relation :subordinated-event mv18773 :event mv18770)
   (:var mv18773 :isa wh-question :statement mv18771 :wh if)
   (:var mv18771 :isa increase :|agent-OR-cause| mv18761 :|multiplier-OR-cause| mv18769 :object
    mv18756 :raw-text "increase")
   (:var mv18761 :isa interlocutor :name "person-and-machine")
   (:var mv18769 :isa measurement :number mv18766) (:var mv18766 :isa number :value 10)
   (:var mv18756 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv18770 :isa vanish :agent mv18755 :raw-text "vanish")
   (:var mv18755 :isa protein :predication mv18758 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18758 :isa phosphorylate :substrate mv18755 :raw-text "phosphorylated"))
  ("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv18802 :isa polar-question :statement mv18801)
   (:var mv18801 :isa event-relation :subordinated-event mv18799 :event mv18795)
   (:var mv18799 :isa wh-question :statement mv18796 :wh if)
   (:var mv18796 :isa increase :|agent-OR-cause| mv18783 :|multiplier-OR-cause| mv18794
    :|affected-process-OR-object| mv18787 :raw-text "increase")
   (:var mv18783 :isa interlocutor :name "person-and-machine")
   (:var mv18794 :isa measurement :number mv18791) (:var mv18791 :isa number :value 10)
   (:var mv18787 :isa bio-amount :measured-item mv18778 :has-determiner "THE" :raw-text "amount")
   (:var mv18778 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv18795 :isa vanish :agent mv18777 :raw-text "vanish")
   (:var mv18777 :isa protein :predication mv18780 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18780 :isa phosphorylate :substrate mv18777 :raw-text "phosphorylated"))
  ("Does the amount of phosphorylated MAPK1 ever increase?"
   (:var mv18814 :isa polar-question :statement mv18812)
   (:var mv18812 :isa increase :cause mv18806 :adverb mv18809 :raw-text "increase")
   (:var mv18806 :isa bio-amount :measured-item mv18803 :has-determiner "THE" :raw-text "amount")
   (:var mv18803 :isa protein :predication mv18808 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18808 :isa phosphorylate :substrate mv18803 :raw-text "phosphorylated")
   (:var mv18809 :isa ever :name "ever"))
  ("Is MAP2K1 bound to MAPK1 eventually high?"
   (:var mv18824 :isa polar-question :statement mv18823)
   (:var mv18823 :isa copular-predication :item mv18815 :value mv18821 :predicate mv18817)
   (:var mv18815 :isa protein :predication mv18818 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv18818 :isa binding :direct-bindee mv18815 :bindee mv18816 :past "PAST" :raw-text
    "bound")
   (:var mv18816 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv18821 :isa high :adverb mv18820) (:var mv18820 :isa eventually :name "eventually")
   (:var mv18817 :isa be))
  ("Is MAPK1 bound to MAP2K1 transient?" (:var mv18833 :isa polar-question :statement mv18832)
   (:var mv18832 :isa copular-predication :item mv18825 :value mv18830 :predicate mv18827)
   (:var mv18825 :isa protein :predication mv18828 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18828 :isa binding :direct-bindee mv18825 :bindee mv18826 :past "PAST" :raw-text
    "bound")
   (:var mv18826 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv18830 :isa transient) (:var mv18827 :isa be))
  ("Is MAPK1-bound MAP2K1 sustained?" (:var mv18840 :isa polar-question :statement mv18839)
   (:var mv18839 :isa sustained :participant mv18835 :past "PAST")
   (:var mv18835 :isa protein :predication mv18837 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv18837 :isa binding :direct-bindee mv18835 :binder mv18834 :raw-text "bound")
   (:var mv18834 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is phosphorylated MAPK1 always high?" (:var mv18847 :isa polar-question :statement mv18846)
   (:var mv18846 :isa copular-predication :item mv18841 :value mv18845 :predicate mv18842)
   (:var mv18841 :isa protein :predication mv18843 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18843 :isa phosphorylate :substrate mv18841 :raw-text "phosphorylated")
   (:var mv18845 :isa high :adverb mv18844) (:var mv18844 :isa always :name "always")
   (:var mv18842 :isa be))
  ("Is phosphorylated MAPK1 eventually high?" (:var mv18854 :isa polar-question :statement mv18853)
   (:var mv18853 :isa copular-predication :item mv18848 :value mv18852 :predicate mv18849)
   (:var mv18848 :isa protein :predication mv18850 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18850 :isa phosphorylate :substrate mv18848 :raw-text "phosphorylated")
   (:var mv18852 :isa high :adverb mv18851) (:var mv18851 :isa eventually :name "eventually")
   (:var mv18849 :isa be))
  ("Is phosphorylated MAPK1 ever high?" (:var mv18861 :isa polar-question :statement mv18860)
   (:var mv18860 :isa copular-predication :item mv18855 :value mv18859 :predicate mv18856)
   (:var mv18855 :isa protein :predication mv18857 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18857 :isa phosphorylate :substrate mv18855 :raw-text "phosphorylated")
   (:var mv18859 :isa high :adverb mv18858) (:var mv18858 :isa ever :name "ever")
   (:var mv18856 :isa be))
  ("Is phosphorylated MAPK1 high at the end?" (:var mv18871 :isa polar-question :statement mv18870)
   (:var mv18870 :isa copular-predication :item mv18862 :value mv18865 :predicate mv18863)
   (:var mv18862 :isa protein :predication mv18864 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18864 :isa phosphorylate :substrate mv18862 :raw-text "phosphorylated")
   (:var mv18865 :isa high) (:var mv18863 :isa be))
  ("Is phosphorylated MAPK1 high?" (:var mv18877 :isa polar-question :statement mv18876)
   (:var mv18876 :isa copular-predication :item mv18872 :value mv18875 :predicate mv18873)
   (:var mv18872 :isa protein :predication mv18874 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18874 :isa phosphorylate :substrate mv18872 :raw-text "phosphorylated")
   (:var mv18875 :isa high) (:var mv18873 :isa be))
  ("Is phosphorylated MAPK1 sustained at a high level?"
   (:var mv18888 :isa polar-question :statement mv18882)
   (:var mv18882 :isa sustained :theme mv18878 :level mv18886 :past "PAST")
   (:var mv18878 :isa protein :predication mv18880 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18880 :isa phosphorylate :substrate mv18878 :raw-text "phosphorylated")
   (:var mv18886 :isa level :has-determiner "A" :predication mv18885 :raw-text "level")
   (:var mv18885 :isa high))
  ("Is phosphorylated MAPK1 sustained?" (:var mv18894 :isa polar-question :statement mv18893)
   (:var mv18893 :isa sustained :participant mv18889 :past "PAST")
   (:var mv18889 :isa protein :predication mv18891 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18891 :isa phosphorylate :substrate mv18889 :raw-text "phosphorylated"))
  ("Is phosphorylated MAPK1 transient?" (:var mv18900 :isa polar-question :statement mv18899)
   (:var mv18899 :isa copular-predication :item mv18895 :value mv18898 :predicate mv18896)
   (:var mv18895 :isa protein :predication mv18897 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18897 :isa phosphorylate :substrate mv18895 :raw-text "phosphorylated")
   (:var mv18898 :isa transient) (:var mv18896 :isa be))
  ("Is the MAP2K1-MAPK1 complex ever high?" (:var mv18911 :isa polar-question :statement mv18910)
   (:var mv18910 :isa copular-predication :item mv18909 :value mv18907 :predicate mv18903)
   (:var mv18909 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv18902
    :component mv18901)
   (:var mv18902 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv18901 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv18907 :isa high :adverb mv18906) (:var mv18906 :isa ever :name "ever")
   (:var mv18903 :isa be))
  ("Is the MAP2K1-MAPK1 complex formed?" (:var mv18920 :isa polar-question :statement mv18917)
   (:var mv18917 :isa bio-form :agent mv18919 :past "PAST" :raw-text "formed")
   (:var mv18919 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv18913
    :component mv18912)
   (:var mv18913 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv18912 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is the amount of FOS always low if we increase ELK1 10 fold?"
   (:var mv18943 :isa polar-question :statement mv18942)
   (:var mv18942 :isa event-relation :subordinated-event mv18938 :event mv18940)
   (:var mv18938 :isa wh-question :statement mv18932 :wh if)
   (:var mv18932 :isa increase :|agent-OR-cause| mv18930 :level mv18937 :object mv18921 :present
    "PRESENT" :raw-text "increase")
   (:var mv18930 :isa interlocutor :name "person-and-machine")
   (:var mv18937 :isa measurement :number mv18934) (:var mv18934 :isa number :value 10)
   (:var mv18921 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18940 :isa copular-predication :item mv18924 :value mv18928 :predicate mv18922)
   (:var mv18924 :isa bio-amount :measured-item mv18926 :has-determiner "THE" :raw-text "amount")
   (:var mv18926 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18928 :isa low :adverb mv18927) (:var mv18927 :isa always :name "always")
   (:var mv18922 :isa be))
  ("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
   (:var mv18968 :isa polar-question :statement mv18967)
   (:var mv18967 :isa event-relation :subordinated-event mv18963 :event mv18965)
   (:var mv18963 :isa wh-question :statement mv18955 :wh if)
   (:var mv18955 :isa increase :|agent-OR-cause| mv18953 :|multiplier-OR-cause| mv18961 :object
    mv18944 :present "PRESENT" :raw-text "increase")
   (:var mv18953 :isa interlocutor :name "person-and-machine")
   (:var mv18961 :isa measurement :number mv18958) (:var mv18958 :isa number :value 100)
   (:var mv18944 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18965 :isa copular-predication :item mv18947 :value mv18951 :predicate mv18945)
   (:var mv18947 :isa bio-amount :measured-item mv18949 :has-determiner "THE" :raw-text "amount")
   (:var mv18949 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18951 :isa low :adverb mv18950) (:var mv18950 :isa always :name "always")
   (:var mv18945 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"
   (:var mv18995 :isa polar-question :statement mv18994)
   (:var mv18994 :isa event-relation :subordinated-event mv18990 :event mv18992)
   (:var mv18990 :isa wh-question :statement mv18980 :wh if)
   (:var mv18980 :isa increase :|agent-OR-cause| mv18978 :level mv18988
    :|affected-process-OR-object| mv18982 :present "PRESENT" :raw-text "increase")
   (:var mv18978 :isa interlocutor :name "person-and-machine")
   (:var mv18988 :isa measurement :number mv18985) (:var mv18985 :isa number :value 100)
   (:var mv18982 :isa bio-amount :measured-item mv18969 :has-determiner "THE" :raw-text "amount")
   (:var mv18969 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18992 :isa copular-predication :item mv18972 :value mv18976 :predicate mv18970)
   (:var mv18972 :isa bio-amount :measured-item mv18974 :has-determiner "THE" :raw-text "amount")
   (:var mv18974 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18976 :isa high :adverb mv18975) (:var mv18975 :isa ever :name "ever")
   (:var mv18970 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
   (:var mv19024 :isa polar-question :statement mv19023)
   (:var mv19023 :isa event-relation :subordinated-event mv19019 :event mv19021)
   (:var mv19019 :isa wh-question :statement mv19007 :wh if)
   (:var mv19007 :isa increase :|agent-OR-cause| mv19005 :|multiplier-OR-cause| mv19016
    :|affected-process-OR-object| mv19009 :present "PRESENT" :raw-text "increase")
   (:var mv19005 :isa interlocutor :name "person-and-machine")
   (:var mv19016 :isa measurement :number mv19013) (:var mv19013 :isa number :value 100)
   (:var mv19009 :isa bio-amount :measured-item mv18996 :has-determiner "THE" :raw-text "amount")
   (:var mv18996 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv19021 :isa copular-predication :item mv18999 :value mv19003 :predicate mv18997)
   (:var mv18999 :isa bio-amount :measured-item mv19001 :has-determiner "THE" :raw-text "amount")
   (:var mv19001 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv19003 :isa high :adverb mv19002) (:var mv19002 :isa ever :name "ever")
   (:var mv18997 :isa be))
  ("Is the amount of MAPK1 phosphorylated eventually high?"
   (:var mv19034 :isa polar-question :statement mv19030)
   (:var mv19030 :isa phosphorylate :cause mv19028 :past "PAST" :raw-text "phosphorylated")
   (:var mv19028 :isa bio-amount :measured-item mv19025 :has-determiner "THE" :raw-text "amount")
   (:var mv19025 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 eventually high?"
   (:var mv19045 :isa polar-question :statement mv19044)
   (:var mv19044 :isa copular-predication :item mv19038 :value mv19042 :predicate mv19036)
   (:var mv19038 :isa bio-amount :measured-item mv19035 :has-determiner "THE" :raw-text "amount")
   (:var mv19035 :isa protein :predication mv19040 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv19040 :isa phosphorylate :substrate mv19035 :raw-text "phosphorylated")
   (:var mv19042 :isa high :adverb mv19041) (:var mv19041 :isa eventually :name "eventually")
   (:var mv19036 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever high?"
   (:var mv19056 :isa polar-question :statement mv19055)
   (:var mv19055 :isa copular-predication :item mv19049 :value mv19053 :predicate mv19047)
   (:var mv19049 :isa bio-amount :measured-item mv19046 :has-determiner "THE" :raw-text "amount")
   (:var mv19046 :isa protein :predication mv19051 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv19051 :isa phosphorylate :substrate mv19046 :raw-text "phosphorylated")
   (:var mv19053 :isa high :adverb mv19052) (:var mv19052 :isa ever :name "ever")
   (:var mv19047 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever increasing?"
   (:var mv19067 :isa polar-question :statement mv19065)
   (:var mv19065 :isa increase :cause mv19060 :adverb mv19063 :raw-text "increasing")
   (:var mv19060 :isa bio-amount :measured-item mv19057 :has-determiner "THE" :raw-text "amount")
   (:var mv19057 :isa protein :predication mv19062 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv19062 :isa phosphorylate :substrate mv19057 :raw-text "phosphorylated")
   (:var mv19063 :isa ever :name "ever"))
  ("Is the amount of phosphorylated MAPK1 high?"
   (:var mv19077 :isa polar-question :statement mv19076)
   (:var mv19076 :isa copular-predication :item mv19071 :value mv19074 :predicate mv19069)
   (:var mv19071 :isa bio-amount :measured-item mv19068 :has-determiner "THE" :raw-text "amount")
   (:var mv19068 :isa protein :predication mv19073 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv19073 :isa phosphorylate :substrate mv19068 :raw-text "phosphorylated")
   (:var mv19074 :isa high) (:var mv19069 :isa be))
  ("Is the amount of phosphorylated MAPK1 sometimes high?"
   (:var mv19088 :isa polar-question :statement mv19087)
   (:var mv19087 :isa copular-predication :item mv19081 :value mv19085 :predicate mv19079)
   (:var mv19081 :isa bio-amount :measured-item mv19078 :has-determiner "THE" :raw-text "amount")
   (:var mv19078 :isa protein :predication mv19083 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv19083 :isa phosphorylate :substrate mv19078 :raw-text "phosphorylated")
   (:var mv19085 :isa high :adverb mv19084) (:var mv19084 :isa sometimes) (:var mv19079 :isa be))
  ("Is the amount of phosphorylated MAPK1 sustained at a high level?"
   (:var mv19103 :isa polar-question :statement mv19096)
   (:var mv19096 :isa sustained :theme mv19092 :level mv19100 :past "PAST")
   (:var mv19092 :isa bio-amount :measured-item mv19089 :has-determiner "THE" :raw-text "amount")
   (:var mv19089 :isa protein :predication mv19094 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv19094 :isa phosphorylate :substrate mv19089 :raw-text "phosphorylated")
   (:var mv19100 :isa level :has-determiner "A" :predication mv19099 :raw-text "level")
   (:var mv19099 :isa high))
  ("Is the amount of phosphorylated MAPK1 sustained?"
   (:var mv19113 :isa polar-question :statement mv19111)
   (:var mv19111 :isa sustained :participant mv19107 :past "PAST")
   (:var mv19107 :isa bio-amount :measured-item mv19104 :has-determiner "THE" :raw-text "amount")
   (:var mv19104 :isa protein :predication mv19109 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv19109 :isa phosphorylate :substrate mv19104 :raw-text "phosphorylated"))
  ("Is the amount of phosphorylated MAPK1 transient?"
   (:var mv19123 :isa polar-question :statement mv19122)
   (:var mv19122 :isa copular-predication :item mv19117 :value mv19120 :predicate mv19115)
   (:var mv19117 :isa bio-amount :measured-item mv19114 :has-determiner "THE" :raw-text "amount")
   (:var mv19114 :isa protein :predication mv19119 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv19119 :isa phosphorylate :substrate mv19114 :raw-text "phosphorylated")
   (:var mv19120 :isa transient) (:var mv19115 :isa be))
  ("Will the amount of phosphorylated MAPK1 be high?"
   (:var mv19134 :isa polar-question :statement mv19132)
   (:var mv19132 :isa copular-predication :item mv19127 :value mv19131 :predicate mv19130)
   (:var mv19127 :isa bio-amount :measured-item mv19124 :has-determiner "THE" :raw-text "amount")
   (:var mv19124 :isa protein :predication mv19129 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv19129 :isa phosphorylate :substrate mv19124 :raw-text "phosphorylated")
   (:var mv19131 :isa high) (:var mv19130 :isa be :modal "WILL"))
  ("is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv19157 :isa polar-question :statement mv19156)
   (:var mv19156 :isa event-relation :subordinated-event mv19153 :event mv19154)
   (:var mv19153 :isa wh-question :statement mv19143 :wh if)
   (:var mv19143 :isa increase :|agent-OR-cause| mv19141 :level mv19151
    :|affected-process-OR-object| mv19145 :present "PRESENT" :raw-text "increase")
   (:var mv19141 :isa interlocutor :name "person-and-machine")
   (:var mv19151 :isa measurement :number mv19148) (:var mv19148 :isa number :value 100)
   (:var mv19145 :isa bio-amount :measured-item mv19136 :has-determiner "THE" :raw-text "amount")
   (:var mv19136 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv19154 :isa copular-predication :item mv19135 :value mv19139 :predicate mv19137)
   (:var mv19135 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv19139 :isa low :adverb mv19138) (:var mv19138 :isa eventually :name "eventually")
   (:var mv19137 :isa be))
  ("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
   (:var mv19184 :isa polar-question :statement mv19183)
   (:var mv19183 :isa event-relation :subordinated-event mv19180 :event mv19181)
   (:var mv19180 :isa wh-question :statement mv19177 :wh if)
   (:var mv19177 :isa increase :|affected-process-OR-object| mv19166 :|multiplier-OR-cause| mv19175
    :raw-text "increased")
   (:var mv19166 :isa bio-amount :measured-item mv19159 :has-determiner "THE" :raw-text "amount")
   (:var mv19159 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv19175 :isa measurement :number mv19172) (:var mv19172 :isa number :value 100)
   (:var mv19181 :isa copular-predication :item mv19158 :value mv19163 :predicate mv19160)
   (:var mv19158 :isa protein :predication mv19161 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv19161 :isa active) (:var mv19163 :isa low :adverb mv19162)
   (:var mv19162 :isa eventually :name "eventually") (:var mv19160 :isa be))
  ("is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv19211 :isa polar-question :statement mv19210)
   (:var mv19210 :isa event-relation :subordinated-event mv19206 :event mv19208)
   (:var mv19206 :isa wh-question :statement mv19196 :wh if)
   (:var mv19196 :isa increase :|agent-OR-cause| mv19194 :level mv19204
    :|affected-process-OR-object| mv19198 :present "PRESENT" :raw-text "increase")
   (:var mv19194 :isa interlocutor :name "person-and-machine")
   (:var mv19204 :isa measurement :number mv19201) (:var mv19201 :isa number :value 100)
   (:var mv19198 :isa bio-amount :measured-item mv19186 :has-determiner "THE" :raw-text "amount")
   (:var mv19186 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv19208 :isa copular-predication :item mv19189 :value mv19192 :predicate mv19187)
   (:var mv19189 :isa bio-amount :measured-item mv19185 :has-determiner "THE" :raw-text "amount")
   (:var mv19185 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv19192 :isa low :adverb mv19191) (:var mv19191 :isa eventually :name "eventually")
   (:var mv19187 :isa be))
  ("is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"
   (:var mv19239 :isa polar-question :statement mv19238)
   (:var mv19238 :isa event-relation :subordinated-event mv19234 :event mv19236)
   (:var mv19234 :isa wh-question :statement mv19224 :wh if)
   (:var mv19224 :isa increase :|agent-OR-cause| mv19222 :level mv19232
    :|affected-process-OR-object| mv19226 :present "PRESENT" :raw-text "increase")
   (:var mv19222 :isa interlocutor :name "person-and-machine")
   (:var mv19232 :isa measurement :number mv19229) (:var mv19229 :isa number :value 100)
   (:var mv19226 :isa bio-amount :measured-item mv19213 :has-determiner "THE" :raw-text "amount")
   (:var mv19213 :isa molecule :raw-text "SB-525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv19236 :isa copular-predication :item mv19216 :value mv19220 :predicate mv19214)
   (:var mv19216 :isa bio-amount :measured-item mv19212 :has-determiner "THE" :raw-text "amount")
   (:var mv19212 :isa protein :predication mv19218 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv19218 :isa active) (:var mv19220 :isa low :adverb mv19219)
   (:var mv19219 :isa always :name "always") (:var mv19214 :isa be))
  ("Let's move AKT1 and MAPK1 into mitochondrion."
   (:var mv19250 :isa explicit-suggestion :suggestion mv19244 :marker let-as-directive)
   (:var mv19244 :isa move-to :|at-relative-location-OR-goal| mv19247 :theme mv19248 :present
    "PRESENT")
   (:var mv19247 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv19248 :isa collection :raw-text "AKT1 and MAPK1" :type protein :number 2 :items
    (mv19241 mv19242))
   (:var mv19241 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19242 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("FEN1 phosphorylates AKT1."
   (:var mv19253 :isa phosphorylate :agent mv19251 :substrate mv19252 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv19251 :isa protein :raw-text "FEN1" :uid "UP:P39748" :name "FEN1_HUMAN")
   (:var mv19252 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Move all into mitochondrion."
   (:var mv19255 :isa move-to :|at-relative-location-OR-goal| mv19258 :theme mv19260 :present
    "PRESENT")
   (:var mv19258 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv19260 :isa all :word "all"))
  ("AKT1 phosphorylates MAPK1."
   (:var mv19263 :isa phosphorylate :agent mv19261 :substrate mv19262 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv19261 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19262 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Let's highlight the upstream of phosphorylated MAPK1."
   (:var mv19273 :isa explicit-suggestion :suggestion mv19266 :marker let-as-directive)
   (:var mv19266 :isa highlight :theme mv19268 :present "PRESENT")
   (:var mv19268 :isa upstream-segment :pathwaycomponent mv19265 :has-determiner "THE" :raw-text
    "upstream")
   (:var mv19265 :isa protein :predication mv19271 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv19271 :isa phosphorylate :substrate mv19265 :raw-text "phosphorylated"))
  ("Let's show phosphorylated MAPK1 on the top."
   (:var mv19282 :isa explicit-suggestion :suggestion mv19276 :marker let-as-directive)
   (:var mv19276 :isa show :at-relative-location mv19280 :|statement-OR-theme| mv19275 :present
    "PRESENT")
   (:var mv19280 :isa top-qua-location :has-determiner "THE")
   (:var mv19275 :isa protein :predication mv19277 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv19277 :isa phosphorylate :substrate mv19275 :raw-text "phosphorylated"))
  ("Let's show the downstream of AKT1 on the top."
   (:var mv19295 :isa explicit-suggestion :suggestion mv19285 :marker let-as-directive)
   (:var mv19285 :isa show :at-relative-location mv19292 :|statement-OR-theme| mv19287 :present
    "PRESENT")
   (:var mv19292 :isa top-qua-location :has-determiner "THE")
   (:var mv19287 :isa downstream-segment :pathwaycomponent mv19284 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv19284 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move mitochondrion elements to the top."
   (:var mv19307 :isa explicit-suggestion :suggestion mv19298 :marker let-as-directive)
   (:var mv19298 :isa move-to :goal mv19304 :theme mv19305 :present "PRESENT")
   (:var mv19304 :isa top-qua-location :has-determiner "THE")
   (:var mv19305 :isa element :plural t :modifier mv19299)
   (:var mv19299 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173"))
  ("How does BRAF affect MAPK1?"
   (:var mv19312 :isa affect :manner mv19309 :agent mv19311 :object mv19308 :present "PRESENT"
    :raw-text "affect")
   (:var mv19309 :isa how)
   (:var mv19311 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19308 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect BRAF?"
   (:var mv19316 :isa affect :manner mv19314 :agent mv19313 :object mv19317 :present "PRESENT"
    :raw-text "affect")
   (:var mv19314 :isa how)
   (:var mv19313 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv19317 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the path between BRAF and MAPK1?"
   (:var mv19320 :isa be :subject mv19319 :predicate mv19322 :present "PRESENT")
   (:var mv19319 :isa what) (:var mv19322 :isa path :endpoints mv19326 :has-determiner "THE")
   (:var mv19326 :isa collection :raw-text "BRAF and MAPK1" :type protein :number 2 :items
    (mv19324 mv19318))
   (:var mv19324 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19318 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect JUND?"
   (:var mv19331 :isa affect :manner mv19329 :agent mv19328 :object mv19332 :present "PRESENT"
    :raw-text "affect")
   (:var mv19329 :isa how)
   (:var mv19328 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv19332 :isa protein :raw-text "JUND" :uid "UP:P17535" :name "JUND_HUMAN"))
  ("How does SETDB1 affect ADAM17?"
   (:var mv19337 :isa affect :manner mv19335 :agent mv19333 :object mv19334 :present "PRESENT"
    :raw-text "affect")
   (:var mv19335 :isa how)
   (:var mv19333 :isa protein :raw-text "SETDB1" :uid "UP:Q15047" :name "SETB1_HUMAN")
   (:var mv19334 :isa protein :raw-text "ADAM17" :uid "UP:P78536" :name "ADA17_HUMAN"))
  ("How does KRAS affect MAPK3?"
   (:var mv19342 :isa affect :manner mv19339 :agent mv19341 :object mv19338 :present "PRESENT"
    :raw-text "affect")
   (:var mv19339 :isa how)
   (:var mv19341 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv19338 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does  ITGAV affect ILK?"
   (:var mv19346 :isa affect :manner mv19343 :agent mv19345 :object mv19347 :present "PRESENT"
    :raw-text "affect")
   (:var mv19343 :isa how)
   (:var mv19345 :isa protein :raw-text "ITGAV" :uid "UP:P06756" :name "ITAV_HUMAN")
   (:var mv19347 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("What genes does MAPK1 phosphorylate?"
   (:var mv19354 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes"))
  ("What pathways affect BRAF?"
   (:var mv19358 :isa affect :agent mv19360 :object mv19359 :present "PRESENT" :raw-text "affect")
   (:var mv19360 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv19359 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes activate ILK?"
   (:var mv19364 :isa bio-activate :agent mv19366 :object mv19365 :present "PRESENT" :raw-text
    "activate")
   (:var mv19366 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19365 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("Let's learn about AKT1 in ovarian cancer."
   (:var mv19375 :isa explicit-suggestion :suggestion mv19370 :marker let-as-directive)
   (:var mv19370 :isa learning :context mv19369 :statement mv19368 :present "PRESENT")
   (:var mv19369 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv19368 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What is its relationship with BRAF?"
   (:var mv19377 :isa be :subject mv19376 :predicate mv19379 :present "PRESENT")
   (:var mv19376 :isa what) (:var mv19379 :isa relationship :patient mv19381 :modifier mv19378)
   (:var mv19381 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19378 :isa pronoun/inanimate :word "its"))
  ("What is its relationship with PTPN1?"
   (:var mv19385 :isa be :subject mv19384 :predicate mv19387 :present "PRESENT")
   (:var mv19384 :isa what) (:var mv19387 :isa relationship :patient mv19383 :modifier mv19386)
   (:var mv19383 :isa protein :raw-text "PTPN1" :uid "UP:P18031" :name "PTN1_HUMAN")
   (:var mv19386 :isa pronoun/inanimate :word "its"))
  ("AKT1 phosphorylates IFT140."
   (:var mv19392 :isa phosphorylate :agent mv19390 :substrate mv19391 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv19390 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19391 :isa protein :raw-text "IFT140" :uid "UP:Q96RY7" :name "IF140_HUMAN"))
  ("What is the next correlation of AKT1?" (:var mv19394 :isa what))
  ("Let's stop learning about AKT1." (:var mv19402 :isa let-as-directive))
  ("What is the drug response on cells with TP53 alterations?"
   (:var mv19411 :isa be :subject mv19410 :predicate mv19414 :present "PRESENT")
   (:var mv19410 :isa what)
   (:var mv19414 :isa response :beneficiary mv19423 :has-determiner "THE" :modifier mv19413
    :raw-text "response")
   (:var mv19423 :isa cell-type :plural t :mutation mv19421)
   (:var mv19421 :isa alter :plural t :|agent-OR-object| mv19409 :raw-text "alterations")
   (:var mv19409 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19413 :isa drug :raw-text "drug"))
  ("What is the drug response for cells with TP53 alterations?"
   (:var mv19427 :isa be :subject mv19426 :predicate mv19430 :present "PRESENT")
   (:var mv19426 :isa what)
   (:var mv19430 :isa response :cell-type mv19439 :has-determiner "THE" :modifier mv19429 :raw-text
    "response")
   (:var mv19439 :isa cell-type :plural t :mutation mv19437)
   (:var mv19437 :isa alter :plural t :|agent-OR-object| mv19425 :raw-text "alterations")
   (:var mv19425 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19429 :isa drug :raw-text "drug"))
  ("What is the mutation frequency of EGFR in glioblastoma?"
   (:var mv19442 :isa be :subject mv19441 :predicate mv19445 :present "PRESENT")
   (:var mv19441 :isa what)
   (:var mv19445 :isa frequency :context mv19449 :measured-item mv19447 :has-determiner "THE"
    :measured-item mv19444 :raw-text "frequency")
   (:var mv19449 :isa glioblastoma)
   (:var mv19447 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv19444 :isa mutation :raw-text "mutation"))
  ("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv19455 :isa be :subject mv19454 :predicate mv19458 :present "PRESENT")
   (:var mv19454 :isa what)
   (:var mv19458 :isa frequency :context mv19453 :measured-item mv19452 :has-determiner "THE"
    :measured-item mv19457 :raw-text "frequency")
   (:var mv19453 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv19452 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19457 :isa mutation :raw-text "mutation"))
  ("Show me the mutations of PTEN and BRAF in ovarian cancer."
   (:var mv19464 :isa show :|statement-OR-theme| mv19479 :beneficiary mv19465 :present "PRESENT")
   (:var mv19479 :isa mutation :plural t :context mv19463 :object mv19474 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv19463 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv19474 :isa collection :raw-text "PTEN and BRAF" :type protein :number 2 :items
    (mv19470 mv19472))
   (:var mv19470 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv19472 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19465 :isa interlocutor :name "speaker"))
  ("Show me the mutations of PTEN in ovarian cancer."
   (:var mv19481 :isa show :|statement-OR-theme| mv19493 :beneficiary mv19482 :present "PRESENT")
   (:var mv19493 :isa mutation :plural t :context mv19480 :object mv19487 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv19480 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv19487 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv19482 :isa interlocutor :name "speaker"))
  ("What are the mutations of PTEN in ovarian cancer?"
   (:var mv19496 :isa be :subject mv19495 :predicate mv19507 :present "PRESENT")
   (:var mv19495 :isa what)
   (:var mv19507 :isa mutation :plural t :context mv19494 :object mv19501 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv19494 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv19501 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))
  ("What is the most likely cellular location of AKT1 and BRAF?"
   (:var mv19510 :isa be :subject mv19509 :predicate mv19522 :present "PRESENT")
   (:var mv19509 :isa what) (:var mv19522 :isa quality-predicate :item mv19520 :attribute mv19516)
   (:var mv19520 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv19508 mv19519))
   (:var mv19508 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19519 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19516 :isa location-of :has-determiner "THE" :predication mv19514 :modifier mv19515)
   (:var mv19514 :isa likely :comparative mv19512)
   (:var mv19512 :isa superlative-quantifier :name "most")
   (:var mv19515 :isa cellular :name "cellular"))
  ("Are there common upstreams of AKT1 and BRAF?"
   (:var mv19538 :isa polar-question :statement mv19533)
   (:var mv19533 :isa there-exists :value mv19537 :predicate mv19525)
   (:var mv19537 :isa upstream-segment :plural t :pathwaycomponent mv19534 :predication mv19527
    :raw-text "upstreams")
   (:var mv19534 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv19523 mv19532))
   (:var mv19523 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19532 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19527 :isa common) (:var mv19525 :isa syntactic-there))
  ("What are the common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv19542 :isa be :subject mv19541 :predicate mv19554 :present "PRESENT")
   (:var mv19541 :isa what)
   (:var mv19554 :isa upstream-segment :plural t :pathwaycomponent mv19550 :has-determiner "THE"
    :predication mv19544 :raw-text "upstreams")
   (:var mv19550 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv19539 mv19548 mv19540))
   (:var mv19539 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19548 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19540 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv19544 :isa common))
  ("What genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv19567 :isa copular-predication :item mv19564 :value mv19555 :predicate mv19561)
   (:var mv19564 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19555 :isa mutual-exclusivity :disease mv19557 :alternative mv19556)
   (:var mv19557 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv19556 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv19561 :isa be :present "PRESENT"))
  ("What are the mutually exclusive genes with TP53 for breast cancer?"
   (:var mv19572 :isa be :subject mv19571 :predicate mv19582 :present "PRESENT")
   (:var mv19571 :isa what)
   (:var mv19582 :isa gene :disease mv19570 :has-determiner "THE" :predication mv19568 :raw-text
    "genes")
   (:var mv19570 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv19568 :isa mutual-exclusivity :alternative mv19569)
   (:var mv19569 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What is the mutation significance of TP53 for lung cancer?"
   (:var mv19586 :isa be :subject mv19585 :predicate mv19589 :present "PRESENT")
   (:var mv19585 :isa what)
   (:var mv19589 :isa significance :context mv19584 :agent mv19583 :has-determiner "THE" :modifier
    mv19588)
   (:var mv19584 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv19583 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19588 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv19597 :isa be :subject mv19596 :predicate mv19600 :present "PRESENT")
   (:var mv19596 :isa what)
   (:var mv19600 :isa significance :context mv19595 :agent mv19594 :has-determiner "THE" :modifier
    mv19599)
   (:var mv19595 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv19594 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19599 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
   (:var mv19606 :isa be :subject mv19605 :predicate mv19609 :present "PRESENT")
   (:var mv19605 :isa what)
   (:var mv19609 :isa significance :context mv19614 :agent mv19611 :has-determiner "THE" :modifier
    mv19608)
   (:var mv19614 :isa cancer :organ mv19613 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv19613 :isa pancreas)
   (:var mv19611 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv19608 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
   (:var mv19618 :isa be :subject mv19617 :predicate mv19621 :present "PRESENT")
   (:var mv19617 :isa what)
   (:var mv19621 :isa significance :context mv19626 :agent mv19623 :has-determiner "THE" :modifier
    mv19620)
   (:var mv19626 :isa cancer :modifier mv19625 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv19625 :isa protein :raw-text "prostatic" :uid "UP:P20151" :name "KLK2_HUMAN")
   (:var mv19623 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19620 :isa mutation :raw-text "mutation"))
  ("MEK phosphorylates ERK."
   (:var mv19630 :isa phosphorylate :agent mv19629 :substrate mv19631 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv19629 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv19631 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("EGF binds EGFR."
   (:var mv19633 :isa binding :binder mv19632 :direct-bindee mv19634 :present "PRESENT" :raw-text
    "binds")
   (:var mv19632 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv19634 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("EGFR bound to EGF binds GRB2."
   (:var mv19640 :isa binding :binder mv19636 :direct-bindee mv19635 :present "PRESENT" :raw-text
    "binds")
   (:var mv19636 :isa protein :predication mv19637 :raw-text "EGFR" :uid "UP:P00533" :name
    "EGFR_HUMAN")
   (:var mv19637 :isa binding :direct-bindee mv19636 :bindee mv19639 :past "PAST" :raw-text
    "bound")
   (:var mv19639 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv19635 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("Phosphorylated ERK is active."
   (:var mv19646 :isa copular-predication :item mv19643 :value mv19645 :predicate mv19644)
   (:var mv19643 :isa protein-family :predication mv19642 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv19642 :isa phosphorylate :substrate mv19643 :raw-text "Phosphorylated")
   (:var mv19645 :isa active) (:var mv19644 :isa be :present "PRESENT"))
  ("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
   (:var mv19647 :isa protein :predication mv19649 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv19649 :isa phosphorylate :substrate mv19647 :target mv19648 :past "PAST" :raw-text
    "phosphorylated")
   (:var mv19648 :isa protein :site mv19654 :modifier mv19655 :raw-text "MAPK1" :uid "UP:P28482"
    :name "MK01_HUMAN")
   (:var mv19654 :isa residue-on-protein :raw-text "S220" :position mv19653 :amino-acid mv19652)
   (:var mv19653 :isa number :value 220) (:var mv19652 :isa amino-acid :name "serine" :letter "S")
   (:var mv19655 :isa bio-entity :name "phosphoryates"))
  ("Active TP53 transcribes MDM2."
   (:var mv19660 :isa transcribe :agent mv19657 :object mv19658 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv19657 :isa protein :predication mv19659 :raw-text "TP53" :uid "UP:P04637" :name
    "P53_HUMAN")
   (:var mv19659 :isa active)
   (:var mv19658 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
   (:var mv19689 :isa polar-question :statement mv19688)
   (:var mv19688 :isa event-relation :subordinated-event mv19684 :event mv19686)
   (:var mv19684 :isa wh-question :statement mv19672 :wh if)
   (:var mv19672 :isa increase :|agent-OR-cause| mv19670 :|multiplier-OR-cause| mv19681
    :|affected-process-OR-object| mv19674 :present "PRESENT" :raw-text "increase")
   (:var mv19670 :isa interlocutor :name "person-and-machine")
   (:var mv19681 :isa measurement :number mv19678) (:var mv19678 :isa number :value 10)
   (:var mv19674 :isa bio-amount :measured-item mv19661 :has-determiner "THE" :raw-text "amount")
   (:var mv19661 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv19686 :isa copular-predication :item mv19664 :value mv19668 :predicate mv19662)
   (:var mv19664 :isa bio-amount :measured-item mv19666 :has-determiner "THE" :raw-text "amount")
   (:var mv19666 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv19668 :isa high :adverb mv19667) (:var mv19667 :isa ever :name "ever")
   (:var mv19662 :isa be))
  ("Does Vemurafenib decrease phosphorylated ERK in the model?"
   (:var mv19701 :isa polar-question :statement mv19699)
   (:var mv19699 :isa decrease :agent mv19691 :object mv19695 :raw-text "decrease")
   (:var mv19691 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv19695 :isa protein-family :predication mv19694 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv19694 :isa phosphorylate :substrate mv19695 :raw-text "phosphorylated"))
  ("Does Selumetinib decrease JUN in the model?"
   (:var mv19712 :isa polar-question :statement mv19710)
   (:var mv19710 :isa decrease :agent mv19703 :object mv19706 :raw-text "decrease")
   (:var mv19703 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv19706 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))
  ("How does KRAS regulate MAP2K1?"
   (:var mv19717 :isa regulate :manner mv19714 :agent mv19716 :object mv19713 :present "PRESENT"
    :raw-text "regulate")
   (:var mv19714 :isa how)
   (:var mv19716 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv19713 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("How does HRAS activate MAPK3?"
   (:var mv19722 :isa bio-activate :manner mv19719 :agent mv19721 :object mv19718 :present
    "PRESENT" :raw-text "activate")
   (:var mv19719 :isa how)
   (:var mv19721 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv19718 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Does Vemurafenib inhibit BRAF?" (:var mv19728 :isa polar-question :statement mv19727)
   (:var mv19727 :isa inhibit :agent mv19724 :object mv19726 :raw-text "inhibit")
   (:var mv19724 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv19726 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What transcription factors are shared by SRF, HRAS, and ELK1?"
   (:var mv19741 :isa share :object mv19740 :participant mv19739 :present "PRESENT" :raw-text
    "shared")
   (:var mv19740 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv19739 :isa collection :raw-text "SRF, HRAS, and ELK1" :type protein :number 3 :items
    (mv19736 mv19737 mv19731))
   (:var mv19736 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19737 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv19731 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Create a model where LCK phosphorylates CD3E"
   (:var mv19744 :isa create :present "PRESENT" :raw-text "Create"))
  ("What is upstream of CD3E?"
   (:var mv19753 :isa be :subject mv19752 :predicate mv19754 :present "PRESENT")
   (:var mv19752 :isa what)
   (:var mv19754 :isa upstream-segment :pathwaycomponent mv19751 :raw-text "upstream")
   (:var mv19751 :isa protein :raw-text "CD3E" :uid "UP:P07766" :name "CD3E_HUMAN"))
  ("I want to find a treatment for pancreatic cancer."
   (:var mv19762 :isa want :agent mv19759 :theme mv19770 :present "PRESENT")
   (:var mv19759 :isa interlocutor :name "speaker")
   (:var mv19770 :isa bio-find :agent mv19759 :object mv19767 :present "PRESENT" :raw-text "find")
   (:var mv19767 :isa treatment :disease mv19758 :has-determiner "A" :raw-text "treatment")
   (:var mv19758 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug could I use?"
   (:var mv19779 :isa bio-use :object mv19772 :modal mv19773 :agent mv19774 :present "PRESENT"
    :raw-text "use")
   (:var mv19772 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv19773 :isa could)
   (:var mv19774 :isa interlocutor :name "speaker"))
  ("Are there any drugs for BRAF?" (:var mv19792 :isa polar-question :statement mv19788)
   (:var mv19788 :isa there-exists :value mv19791 :predicate mv19781)
   (:var mv19791 :isa drug :plural t :target mv19787 :quantifier mv19783 :raw-text "drugs")
   (:var mv19787 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19783 :isa any :word "any") (:var mv19781 :isa syntactic-there))
  ("Are they kinases?" (:var mv19797 :isa polar-question :statement mv19793)
   (:var mv19793 :isa be :subject mv19794 :predicate mv19796)
   (:var mv19794 :isa pronoun/plural :word "they")
   (:var mv19796 :isa kinase :plural t :raw-text "kinases"))
  ("Can you find a drug for BRAF?" (:var mv19807 :isa polar-question :statement mv19801)
   (:var mv19801 :isa bio-find :agent mv19799 :object mv19803 :modal "CAN" :raw-text "find")
   (:var mv19799 :isa interlocutor :name "hearer")
   (:var mv19803 :isa drug :target mv19805 :has-determiner "A" :raw-text "drug")
   (:var mv19805 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Can you tell me all the transcription factors that are shared by elk1 and srf?"
   (:var mv19829 :isa polar-question :statement mv19813)
   (:var mv19813 :isa tell :agent mv19812 :theme mv19828 :beneficiary mv19814 :modal "CAN")
   (:var mv19812 :isa interlocutor :name "hearer")
   (:var mv19828 :isa transcription-factor :plural t :predication mv19826 :quantifier mv19815
    :has-determiner "THE" :raw-text "transcription factors")
   (:var mv19826 :isa share :object mv19828 :that-rel t :participant mv19823 :modal "CAN" :raw-text
    "shared")
   (:var mv19823 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv19810 mv19822))
   (:var mv19810 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv19822 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19815 :isa all :word "all") (:var mv19814 :isa interlocutor :name "speaker"))
  ("Can you tell me what transcription factors are shared by elk1 and srf?"
   (:var mv19847 :isa polar-question :statement mv19835)
   (:var mv19835 :isa tell :agent mv19834 :theme mv19845 :beneficiary mv19836 :modal "CAN")
   (:var mv19834 :isa interlocutor :name "hearer")
   (:var mv19845 :isa share :object mv19844 :participant mv19843 :modal "CAN" :raw-text "shared")
   (:var mv19844 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv19843 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv19832 mv19842))
   (:var mv19832 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv19842 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19836 :isa interlocutor :name "speaker"))
  ("Do you know any drugs for BRAF?" (:var mv19861 :isa polar-question :statement mv19860)
   (:var mv19860 :isa know :agent mv19849 :statement mv19859)
   (:var mv19849 :isa interlocutor :name "hearer")
   (:var mv19859 :isa drug :plural t :target mv19855 :quantifier mv19851 :raw-text "drugs")
   (:var mv19855 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19851 :isa any :word "any"))
  ("Does STAT3 regulate the JUN gene in the lung?"
   (:var mv19873 :isa polar-question :statement mv19871)
   (:var mv19871 :isa regulate :agent mv19862 :object mv19867 :raw-text "regulate")
   (:var mv19862 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19867 :isa gene :organ mv19870 :has-determiner "THE" :expresses mv19866 :raw-text
    "gene")
   (:var mv19870 :isa lung :has-determiner "THE")
   (:var mv19866 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))
  ("Does STAT3 regulate the c-fos gene in liver?"
   (:var mv19884 :isa polar-question :statement mv19882)
   (:var mv19882 :isa regulate :agent mv19874 :object mv19879 :raw-text "regulate")
   (:var mv19874 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19879 :isa gene :organ mv19881 :has-determiner "THE" :expresses mv19875 :raw-text
    "gene")
   (:var mv19881 :isa liver)
   (:var mv19875 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the c-fos gene?" (:var mv19892 :isa polar-question :statement mv19891)
   (:var mv19891 :isa regulate :agent mv19885 :object mv19890 :raw-text "regulate")
   (:var mv19885 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19890 :isa gene :has-determiner "THE" :expresses mv19886 :raw-text "gene")
   (:var mv19886 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the cfos gene in the lung?"
   (:var mv19904 :isa polar-question :statement mv19902)
   (:var mv19902 :isa regulate :agent mv19893 :object mv19898 :raw-text "regulate")
   (:var mv19893 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19898 :isa gene :organ mv19901 :has-determiner "THE" :expresses mv19897 :raw-text
    "gene")
   (:var mv19901 :isa lung :has-determiner "THE")
   (:var mv19897 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does TP53 target MDM2?" (:var mv19911 :isa polar-question :statement mv19910)
   (:var mv19910 :isa target :agent mv19905 :object mv19906 :raw-text "target")
   (:var mv19905 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19906 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Does miR-2000-5p target stat3" (:var mv19918 :isa polar-question :statement mv19917)
   (:var mv19917 :isa target :agent mv19912 :object mv19913 :raw-text "target")
   (:var mv19912 :isa micro-rna :raw-text "miR-2000-5p" :name "microRNA 2000-5p" :uid
    "MIMAmiR-2000-5p")
   (:var mv19913 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-20b-5p target STAT3?" (:var mv19925 :isa polar-question :statement mv19924)
   (:var mv19924 :isa target :agent mv19919 :object mv19920 :raw-text "target")
   (:var mv19919 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv19920 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-222-3p target STAT3?" (:var mv19932 :isa polar-question :statement mv19931)
   (:var mv19931 :isa target :agent mv19926 :object mv19927 :raw-text "target")
   (:var mv19926 :isa micro-rna :raw-text "miR-222-3p" :name "microRNA 222-3p" :uid "MIMAT0000279")
   (:var mv19927 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does stat3 regulate cfors in liver" (:var mv19941 :isa polar-question :statement mv19939)
   (:var mv19939 :isa regulate :agent mv19933 :object mv19938 :raw-text "regulate")
   (:var mv19933 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19938 :isa bio-entity :organ mv19937 :name "cfors") (:var mv19937 :isa liver))
  ("Does stat3 regulate cfos in liver" (:var mv19950 :isa polar-question :statement mv19948)
   (:var mv19948 :isa regulate :agent mv19942 :object mv19945 :raw-text "regulate")
   (:var mv19942 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19945 :isa protein :organ mv19947 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv19947 :isa liver))
  ("Does it regulate cfos in brain" (:var mv19959 :isa polar-question :statement mv19957)
   (:var mv19957 :isa regulate :|agent-OR-cause| mv19952 :object mv19954 :raw-text "regulate")
   (:var mv19952 :isa pronoun/inanimate :word "it")
   (:var mv19954 :isa protein :organ mv19956 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv19956 :isa brain))
  ("Does stat3 regulate cfos?" (:var mv19965 :isa polar-question :statement mv19964)
   (:var mv19964 :isa regulate :agent mv19960 :object mv19963 :raw-text "regulate")
   (:var mv19960 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19963 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 regulate the cfos gene in blood cells"
   (:var mv19979 :isa polar-question :statement mv19976)
   (:var mv19976 :isa regulate :agent mv19966 :object mv19971 :raw-text "regulate")
   (:var mv19966 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19971 :isa gene :cell-type mv19977 :has-determiner "THE" :expresses mv19970 :raw-text
    "gene")
   (:var mv19977 :isa cell-type :plural t :non-cellular-location mv19973)
   (:var mv19973 :isa bio-organ :name "blood" :uid "BTO:0000089")
   (:var mv19970 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the il-12 pathway utilize SGK1?" (:var mv19987 :isa polar-question :statement mv19986)
   (:var mv19986 :isa bio-utilize :agent mv19984 :object mv19981 :raw-text "utilize")
   (:var mv19984 :isa pathway :has-determiner "THE" :modifier mv19980 :raw-text "pathway")
   (:var mv19980 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv19981 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Does the mTor pathway utilize SGK1?" (:var mv19997 :isa polar-question :statement mv19996)
   (:var mv19996 :isa bio-utilize :agent mv19994 :object mv19988 :raw-text "utilize")
   (:var mv19994 :isa pathway :has-determiner "THE" :modifier mv19991 :raw-text "pathway")
   (:var mv19991 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv19988 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Give me the evidence that kras decreases frizzled8."
   (:var mv19999 :isa give :theme mv20006 :beneficiary mv20000 :present "PRESENT")
   (:var mv20006 :isa evidence :statement mv20005 :has-determiner "THE")
   (:var mv20005 :isa decrease :agent mv20004 :object mv19998 :present "PRESENT" :raw-text
    "decreases")
   (:var mv20004 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv19998 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv20000 :isa interlocutor :name "speaker"))
  ("Give me the evidence that kras regulates frizzled8."
   (:var mv20008 :isa give :theme mv20015 :beneficiary mv20009 :present "PRESENT")
   (:var mv20015 :isa evidence :statement mv20014 :has-determiner "THE")
   (:var mv20014 :isa regulate :agent mv20013 :object mv20007 :present "PRESENT" :raw-text
    "regulates")
   (:var mv20013 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv20007 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv20009 :isa interlocutor :name "speaker"))
  ("Is MEK a kinase?" (:var mv20020 :isa polar-question :statement mv20016)
   (:var mv20016 :isa be :subject mv20017 :predicate mv20019)
   (:var mv20017 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv20019 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is MEK2 inhibited by Selumetinib?" (:var mv20027 :isa polar-question :statement mv20023)
   (:var mv20023 :isa inhibit :object mv20021 :agent mv20025 :past "PAST" :raw-text "inhibited")
   (:var mv20021 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN")
   (:var mv20025 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Is STAT3 a transcription factor for c-fos gene?"
   (:var mv20036 :isa polar-question :statement mv20031)
   (:var mv20031 :isa be :subject mv20028 :predicate mv20029)
   (:var mv20028 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20029 :isa transcription-factor :controlled-gene mv20034 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv20034 :isa gene :expresses mv20030 :raw-text "gene")
   (:var mv20030 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 one of the regulators of the c-fos gene?"
   (:var mv20055 :isa polar-question :statement mv20039)
   (:var mv20039 :isa be :subject mv20037 :predicate mv20054)
   (:var mv20037 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20054 :isa regulator :plural t :quantifier mv20042 :theme mv20049 :has-determiner "THE"
    :raw-text "regulators")
   (:var mv20042 :isa number :value 1)
   (:var mv20049 :isa gene :has-determiner "THE" :expresses mv20038 :raw-text "gene")
   (:var mv20038 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Selumetinib an inhibitor of MEK1?" (:var mv20063 :isa polar-question :statement mv20057)
   (:var mv20057 :isa be :subject mv20058 :predicate mv20060)
   (:var mv20058 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv20060 :isa inhibitor :protein mv20056 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv20056 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is Vemurafenib an inhibitor for BRAF?" (:var mv20071 :isa polar-question :statement mv20064)
   (:var mv20064 :isa be :subject mv20065 :predicate mv20067)
   (:var mv20065 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv20067 :isa inhibitor :|target-OR-protein| mv20069 :has-determiner "AN" :raw-text
    "inhibitor")
   (:var mv20069 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is fakeprotein a kinase" (:var mv20076 :isa polar-question :statement mv20072)
   (:var mv20072 :isa be :subject mv20075 :predicate mv20074)
   (:var mv20075 :isa bio-entity :name "fakeprotein")
   (:var mv20074 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is hmga2 a kinase" (:var mv20081 :isa polar-question :statement mv20078)
   (:var mv20078 :isa be :subject mv20077 :predicate mv20080)
   (:var mv20077 :isa protein :raw-text "hmga2" :uid "UP:P52926" :name "HMGA2_HUMAN")
   (:var mv20080 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is stat3 an apoptotic regulator?" (:var mv20088 :isa polar-question :statement mv20083)
   (:var mv20083 :isa be :subject mv20082 :predicate mv20087)
   (:var mv20082 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20087 :isa regulator :has-determiner "AN" :cellular-process mv20085 :raw-text
    "regulator")
   (:var mv20085 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in any apoptotic pathways?"
   (:var mv20101 :isa polar-question :statement mv20091)
   (:var mv20091 :isa involve :object mv20089 :|context-OR-theme| mv20099 :past "PAST")
   (:var mv20089 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20099 :isa pathway :plural t :quantifier mv20093 :cellular-process mv20094 :raw-text
    "pathways")
   (:var mv20093 :isa any :word "any") (:var mv20094 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in apoptotic regulation?"
   (:var mv20110 :isa polar-question :statement mv20104)
   (:var mv20104 :isa involve :object mv20102 :theme mv20108 :past "PAST")
   (:var mv20102 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20108 :isa regulate :cellular-process mv20106 :raw-text "regulation")
   (:var mv20106 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in regulating apoptosis?"
   (:var mv20118 :isa polar-question :statement mv20113)
   (:var mv20113 :isa involve :object mv20111 :theme mv20115 :past "PAST")
   (:var mv20111 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20115 :isa regulate :affected-process mv20116 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv20116 :isa apoptosis :raw-text "apoptosis"))
  ("What proteins does MEK phosphorylate?"
   (:var mv20124 :isa phosphorylate :substrate mv20125 :agent mv20123 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv20125 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv20123 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Is the first one a kinase" (:var mv20135 :isa polar-question :statement mv20126)
   (:var mv20126 :isa be :subject mv20134 :predicate mv20133)
   (:var mv20134 :isa indefinite-pronoun :has-determiner "THE" :ordinal mv20131 :word "one")
   (:var mv20131 :isa number :value 1)
   (:var mv20133 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is there a drug that targets BRAF?" (:var mv20147 :isa polar-question :statement mv20146)
   (:var mv20146 :isa there-exists :value mv20140 :predicate mv20137)
   (:var mv20140 :isa drug :predication mv20144 :has-determiner "A" :raw-text "drug")
   (:var mv20144 :isa target :agent mv20140 :that-rel t :object mv20145 :present "PRESENT"
    :raw-text "targets")
   (:var mv20145 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv20137 :isa syntactic-there))
  ("Is there an apoptotic pathway regulated by stat3?"
   (:var mv20160 :isa polar-question :statement mv20158)
   (:var mv20158 :isa there-exists :value mv20155 :predicate mv20150)
   (:var mv20155 :isa pathway :predication mv20156 :has-determiner "AN" :cellular-process mv20153
    :raw-text "pathway")
   (:var mv20156 :isa regulate :affected-process mv20155 :agent mv20148 :past "PAST" :raw-text
    "regulated")
   (:var mv20148 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20153 :isa apoptosis :raw-text "apoptotic") (:var mv20150 :isa syntactic-there))
  ("Is there an apoptotic pathway that is regulated by stat3?"
   (:var mv20176 :isa polar-question :statement mv20173)
   (:var mv20173 :isa there-exists :value mv20168 :predicate mv20163)
   (:var mv20168 :isa pathway :predication mv20174 :has-determiner "AN" :cellular-process mv20166
    :raw-text "pathway")
   (:var mv20174 :isa regulate :affected-process mv20168 :that-rel t :agent mv20161 :present
    "PRESENT" :raw-text "regulated")
   (:var mv20161 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20166 :isa apoptosis :raw-text "apoptotic") (:var mv20163 :isa syntactic-there))
  ("Let me know if there are any apoptotic genes stat3 regulates"
   (:var mv20178 :isa let :complement mv20196 :present "PRESENT")
   (:var mv20196 :isa know :agent mv20179 :statement mv20195 :present "PRESENT")
   (:var mv20179 :isa interlocutor :name "speaker")
   (:var mv20195 :isa wh-question :statement mv20191 :wh if)
   (:var mv20191 :isa there-exists :value mv20194 :predicate mv20184)
   (:var mv20194 :isa gene :plural t :predication mv20190 :quantifier mv20185 :cellular-process
    mv20186 :raw-text "genes")
   (:var mv20190 :isa regulate :object mv20194 :agent mv20177 :present "PRESENT" :raw-text
    "regulates")
   (:var mv20177 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20185 :isa any :word "any") (:var mv20186 :isa apoptosis :raw-text "apoptotic")
   (:var mv20184 :isa be))
  ("Let me know which genes stat3 regulates"
   (:var mv20198 :isa let :complement mv20207 :present "PRESENT")
   (:var mv20207 :isa know :agent mv20199 :statement mv20206 :present "PRESENT")
   (:var mv20199 :isa interlocutor :name "speaker")
   (:var mv20206 :isa gene :plural t :predication mv20204 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv20204 :isa regulate :object mv20206 :agent mv20197 :present "PRESENT" :raw-text
    "regulates")
   (:var mv20197 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List all the genes regulated by elk1 and srf?"
   (:var mv20209 :isa list :theme mv20220 :present "PRESENT")
   (:var mv20220 :isa gene :plural t :predication mv20214 :quantifier mv20210 :has-determiner "THE"
    :raw-text "genes")
   (:var mv20214 :isa regulate :object mv20220 :agent mv20218 :past "PAST" :raw-text "regulated")
   (:var mv20218 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20208 mv20217))
   (:var mv20208 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20217 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20210 :isa all :word "all"))
  ("List genes regulated by elk1 and srf"
   (:var mv20224 :isa list :theme mv20226 :present "PRESENT")
   (:var mv20226 :isa gene :plural t :predication mv20227 :raw-text "genes")
   (:var mv20227 :isa regulate :object mv20226 :agent mv20231 :past "PAST" :raw-text "regulated")
   (:var mv20231 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20223 mv20230))
   (:var mv20223 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20230 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("List some genes that are regulated by elk1 and srf"
   (:var mv20235 :isa list :theme mv20249 :present "PRESENT")
   (:var mv20249 :isa gene :plural t :predication mv20247 :quantifier mv20236 :raw-text "genes")
   (:var mv20247 :isa regulate :object mv20249 :that-rel t :agent mv20245 :present "PRESENT"
    :raw-text "regulated")
   (:var mv20245 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20234 mv20244))
   (:var mv20234 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20244 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20236 :isa some :word "some"))
  ("List the evidence that kras decreases frizzled8."
   (:var mv20251 :isa list :theme mv20257 :present "PRESENT")
   (:var mv20257 :isa evidence :statement mv20256 :has-determiner "THE")
   (:var mv20256 :isa decrease :agent mv20255 :object mv20250 :present "PRESENT" :raw-text
    "decreases")
   (:var mv20255 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv20250 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Name genes regulated by elk1 and srf"
   (:var mv20259 :isa name-something :patient mv20263 :present "PRESENT")
   (:var mv20263 :isa gene :plural t :predication mv20264 :raw-text "genes")
   (:var mv20264 :isa regulate :object mv20263 :agent mv20268 :past "PAST" :raw-text "regulated")
   (:var mv20268 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20258 mv20267))
   (:var mv20258 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20267 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Of the apoptotic genes regulated by stat3, which are active in the liver?"
   (:var mv20289 :isa copular-predication :item mv20292 :value mv20282 :predicate mv20281)
   (:var mv20292 :isa gene :plural t :has-determiner "WHICH" :predication mv20278 :has-determiner
    "THE" :cellular-process mv20274 :raw-text "genes")
   (:var mv20278 :isa regulate :object mv20292 :agent mv20271 :past "PAST" :raw-text "regulated")
   (:var mv20271 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20274 :isa apoptosis :raw-text "apoptotic") (:var mv20282 :isa active :organ mv20285)
   (:var mv20285 :isa liver :has-determiner "THE") (:var mv20281 :isa be :present "PRESENT"))
  ("Of the apoptotic genes stat3 regulates, which are active in the liver?"
   (:var mv20311 :isa copular-predication :item mv20313 :value mv20304 :predicate mv20303)
   (:var mv20313 :isa gene :plural t :has-determiner "WHICH" :predication mv20301 :has-determiner
    "THE" :cellular-process mv20297 :raw-text "genes")
   (:var mv20301 :isa regulate :object mv20313 :agent mv20294 :present "PRESENT" :raw-text
    "regulates")
   (:var mv20294 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20297 :isa apoptosis :raw-text "apoptotic") (:var mv20304 :isa active :organ mv20307)
   (:var mv20307 :isa liver :has-determiner "THE") (:var mv20303 :isa be :present "PRESENT"))
  ("Of the genes stat3 regulates in the liver, which are apoptotic?"
   (:var mv20329 :isa copular-predication :item mv20332 :value mv20326 :predicate mv20325)
   (:var mv20332 :isa gene :plural t :has-determiner "WHICH" :predication mv20320 :has-determiner
    "THE" :raw-text "genes")
   (:var mv20320 :isa regulate :object mv20332 :agent mv20315 :organ mv20323 :present "PRESENT"
    :raw-text "regulates")
   (:var mv20315 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20323 :isa liver :has-determiner "THE")
   (:var mv20326 :isa apoptosis :raw-text "apoptotic") (:var mv20325 :isa be :present "PRESENT"))
  ("Of the hepatic genes stat3 regulates, which are apoptotic?"
   (:var mv20347 :isa copular-predication :item mv20349 :value mv20343 :predicate mv20342)
   (:var mv20349 :isa gene :plural t :has-determiner "WHICH" :predication mv20340 :has-determiner
    "THE" :non-cellular-location mv20337 :raw-text "genes")
   (:var mv20340 :isa regulate :object mv20349 :agent mv20334 :present "PRESENT" :raw-text
    "regulates")
   (:var mv20334 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20337 :isa liver) (:var mv20343 :isa apoptosis :raw-text "apoptotic")
   (:var mv20342 :isa be :present "PRESENT"))
  ("Of the liver genes stat3 regulates, which are apoptotic?"
   (:var mv20364 :isa copular-predication :item mv20366 :value mv20360 :predicate mv20359)
   (:var mv20366 :isa gene :plural t :has-determiner "WHICH" :predication mv20357 :has-determiner
    "THE" :non-cellular-location mv20354 :raw-text "genes")
   (:var mv20357 :isa regulate :object mv20366 :agent mv20351 :present "PRESENT" :raw-text
    "regulates")
   (:var mv20351 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20354 :isa liver) (:var mv20360 :isa apoptosis :raw-text "apoptotic")
   (:var mv20359 :isa be :present "PRESENT"))
  ("Please find pathways involving SRF"
   (:var mv20370 :isa bio-find :object mv20372 :present "PRESENT" :adverb mv20368 :raw-text "find")
   (:var mv20372 :isa pathway :plural t :predication mv20373 :raw-text "pathways")
   (:var mv20373 :isa involve :theme mv20372 :object mv20374 :progressive "PROGRESSIVE")
   (:var mv20374 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20368 :isa please :name "please"))
  ("Please show me KEGG pathways involving SRF"
   (:var mv20377 :isa show :|statement-OR-theme| mv20385 :beneficiary mv20378 :present "PRESENT"
    :adverb mv20376)
   (:var mv20385 :isa pathway :plural t :predication mv20382 :modifier mv20379 :raw-text
    "pathways")
   (:var mv20382 :isa involve :theme mv20385 :object mv20383 :progressive "PROGRESSIVE")
   (:var mv20383 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20379 :isa database :name "KEGG" :uid "KEGG")
   (:var mv20378 :isa interlocutor :name "speaker") (:var mv20376 :isa please :name "please"))
  ("Please show me pathways involving SRF"
   (:var mv20387 :isa show :|statement-OR-theme| mv20393 :beneficiary mv20388 :present "PRESENT"
    :adverb mv20386)
   (:var mv20393 :isa pathway :plural t :predication mv20391 :raw-text "pathways")
   (:var mv20391 :isa involve :theme mv20393 :object mv20392 :progressive "PROGRESSIVE")
   (:var mv20392 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20388 :isa interlocutor :name "speaker") (:var mv20386 :isa please :name "please"))
  ("MEK activates ERK"
   (:var mv20395 :isa bio-activate :agent mv20394 :object mv20396 :present "PRESENT" :raw-text
    "activates")
   (:var mv20394 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv20396 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that MEK activates ERK"
   (:var mv20397 :isa remove :object mv20404 :present "PRESENT" :raw-text "Remove")
   (:var mv20404 :isa fact :statement mv20402 :has-determiner "THE")
   (:var mv20402 :isa bio-activate :agent mv20401 :object mv20403 :present "PRESENT" :raw-text
    "activates")
   (:var mv20401 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv20403 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Inactive MEK activates ERK"
   (:var mv20407 :isa bio-activate :agent mv20406 :object mv20408 :present "PRESENT" :raw-text
    "activates")
   (:var mv20406 :isa protein-family :predication mv20405 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv20405 :isa inactive)
   (:var mv20408 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that inactive MEK activates ERK"
   (:var mv20409 :isa remove :object mv20417 :present "PRESENT" :raw-text "Remove")
   (:var mv20417 :isa fact :statement mv20415 :has-determiner "THE")
   (:var mv20415 :isa bio-activate :agent mv20414 :object mv20416 :present "PRESENT" :raw-text
    "activates")
   (:var mv20414 :isa protein-family :predication mv20413 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv20413 :isa inactive)
   (:var mv20416 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Show immune system pathways"
   (:var mv20419 :isa show :|statement-OR-theme| mv20422 :present "PRESENT")
   (:var mv20422 :isa pathway :plural t :non-cellular-location mv20418 :raw-text "pathways")
   (:var mv20418 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Show me pathways involving SRF"
   (:var mv20423 :isa show :|statement-OR-theme| mv20429 :beneficiary mv20424 :present "PRESENT")
   (:var mv20429 :isa pathway :plural t :predication mv20427 :raw-text "pathways")
   (:var mv20427 :isa involve :theme mv20429 :object mv20428 :progressive "PROGRESSIVE")
   (:var mv20428 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20424 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF in them"
   (:var mv20430 :isa show :|statement-OR-theme| mv20440 :beneficiary mv20431 :present "PRESENT")
   (:var mv20440 :isa pathway :plural t :pathwaycomponent mv20435 :raw-text "pathways")
   (:var mv20435 :isa protein
    :|cell-line-OR-cell-type-OR-cellular-location-OR-context-OR-organ-OR-preparation-OR-organism-OR-in-equilibrium-with-OR-complex-OR-equilibrium-state-OR-state-OR-in-pathway-OR-in-family|
    mv20437 :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20437 :isa pronoun/plural :word "them")
   (:var mv20431 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF"
   (:var mv20441 :isa show :|statement-OR-theme| mv20448 :beneficiary mv20442 :present "PRESENT")
   (:var mv20448 :isa pathway :plural t :pathwaycomponent mv20446 :raw-text "pathways")
   (:var mv20446 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20442 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases frizzled8."
   (:var mv20450 :isa show :|statement-OR-theme| mv20457 :beneficiary mv20451 :present "PRESENT")
   (:var mv20457 :isa evidence :statement mv20456 :has-determiner "THE")
   (:var mv20456 :isa decrease :agent mv20455 :object mv20449 :present "PRESENT" :raw-text
    "decreases")
   (:var mv20455 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv20449 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv20451 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases the amount of frizzled8?"
   (:var mv20459 :isa show :|statement-OR-theme| mv20470 :beneficiary mv20460 :present "PRESENT")
   (:var mv20470 :isa evidence :statement mv20465 :has-determiner "THE")
   (:var mv20465 :isa decrease :agent mv20464 :|affected-process-OR-object| mv20467 :present
    "PRESENT" :raw-text "decreases")
   (:var mv20464 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv20467 :isa bio-amount :measured-item mv20458 :has-determiner "THE" :raw-text "amount")
   (:var mv20458 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv20460 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras regulates frizzled8?"
   (:var mv20472 :isa show :|statement-OR-theme| mv20479 :beneficiary mv20473 :present "PRESENT")
   (:var mv20479 :isa evidence :statement mv20478 :has-determiner "THE")
   (:var mv20478 :isa regulate :agent mv20477 :object mv20471 :present "PRESENT" :raw-text
    "regulates")
   (:var mv20477 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv20471 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv20473 :isa interlocutor :name "speaker"))
  ("Show transcription factors shared by elk1 and srf"
   (:var mv20483 :isa show :|statement-OR-theme| mv20481 :present "PRESENT")
   (:var mv20481 :isa transcription-factor :plural t :predication mv20484 :raw-text
    "transcription factors")
   (:var mv20484 :isa share :object mv20481 :participant mv20488 :past "PAST" :raw-text "shared")
   (:var mv20488 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20482 mv20487))
   (:var mv20482 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20487 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me how stat3 regulates apoptosis"
   (:var mv20492 :isa tell :beneficiary mv20493 :present "PRESENT")
   (:var mv20493 :isa interlocutor :name "speaker"))
  ("Tell me what apoptotic pathways are regulated by stat3 in the liver"
   (:var mv20499 :isa tell :theme mv20514 :beneficiary mv20500 :present "PRESENT")
   (:var mv20514 :isa regulate :affected-process mv20513 :agent mv20498 :present "PRESENT"
    :raw-text "regulated")
   (:var mv20513 :isa pathway :plural t :has-determiner "WHAT" :cellular-process mv20502 :raw-text
    "pathways")
   (:var mv20502 :isa apoptosis :raw-text "apoptotic")
   (:var mv20498 :isa protein :organ mv20511 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv20511 :isa liver :has-determiner "THE")
   (:var mv20500 :isa interlocutor :name "speaker"))
  ("Tell me what genes elk1 and srf regulate"
   (:var mv20518 :isa tell :theme mv20528 :beneficiary mv20519 :present "PRESENT")
   (:var mv20528 :isa gene :plural t :predication mv20525 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20525 :isa regulate :object mv20528 :agent mv20526 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20526 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20517 mv20524))
   (:var mv20517 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20524 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20519 :isa interlocutor :name "speaker"))
  ("Tell me what pathways are regulated by stat3 in the liver"
   (:var mv20530 :isa tell :theme mv20542 :beneficiary mv20531 :present "PRESENT")
   (:var mv20542 :isa regulate :affected-process mv20541 :agent mv20529 :present "PRESENT"
    :raw-text "regulated")
   (:var mv20541 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv20529 :isa protein :organ mv20540 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv20540 :isa liver :has-determiner "THE")
   (:var mv20531 :isa interlocutor :name "speaker"))
  ("What KEGG pathways involve immune signaling?"
   (:var mv20549 :isa involve :theme mv20553 :object mv20551 :present "PRESENT")
   (:var mv20553 :isa pathway :plural t :has-determiner "WHAT" :modifier mv20546 :raw-text
    "pathways")
   (:var mv20546 :isa database :name "KEGG" :uid "KEGG")
   (:var mv20551 :isa signal :modifier mv20550 :raw-text "signaling")
   (:var mv20550 :isa immune :name "immune"))
  ("What MAP kinase phosphatases are regulated by ELK1?"
   (:var mv20564 :isa regulate :object mv20563 :agent mv20555 :present "PRESENT" :raw-text
    "regulated")
   (:var mv20563 :isa phosphatase :plural t :has-determiner "WHAT" :enzyme mv20554 :raw-text
    "phosphatases")
   (:var mv20554 :isa protein-family :raw-text "MAP kinase" :name
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
   (:var mv20555 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What apoptotic genes are downstream of stat3?"
   (:var mv20572 :isa be :subject mv20577 :predicate mv20573 :present "PRESENT")
   (:var mv20577 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv20568 :raw-text
    "genes")
   (:var mv20568 :isa apoptosis :raw-text "apoptotic")
   (:var mv20573 :isa downstream-segment :pathwaycomponent mv20566 :raw-text "downstream")
   (:var mv20566 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes does stat3 regulate in the liver?"
   (:var mv20586 :isa regulate :object mv20591 :agent mv20579 :organ mv20589 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20591 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv20581 :raw-text
    "genes")
   (:var mv20581 :isa apoptosis :raw-text "apoptotic")
   (:var mv20579 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20589 :isa liver :has-determiner "THE"))
  ("What apoptotic genes does stat3 regulate?"
   (:var mv20600 :isa regulate :object mv20602 :agent mv20593 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20602 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv20595 :raw-text
    "genes")
   (:var mv20595 :isa apoptosis :raw-text "apoptotic")
   (:var mv20593 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes is stat3 upstream of?"
   (:var mv20609 :isa be :subject mv20614 :predicate mv20610 :present "PRESENT")
   (:var mv20614 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv20605 :raw-text
    "genes")
   (:var mv20605 :isa apoptosis :raw-text "apoptotic")
   (:var mv20610 :isa upstream-segment :pathwaycomponent mv20614 :modifier mv20603 :raw-text
    "upstream")
   (:var mv20603 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic pathways involve stat3?"
   (:var mv20621 :isa involve :theme mv20623 :object mv20615 :present "PRESENT")
   (:var mv20623 :isa pathway :plural t :has-determiner "WHAT" :cellular-process mv20617 :raw-text
    "pathways")
   (:var mv20617 :isa apoptosis :raw-text "apoptotic")
   (:var mv20615 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are Selumetinib's targets?"
   (:var mv20625 :isa be :subject mv20624 :predicate mv20631 :present "PRESENT")
   (:var mv20624 :isa what)
   (:var mv20631 :isa target-protein :plural t :treatment mv20627 :raw-text "targets")
   (:var mv20627 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What are some JAK1 inhibitors?"
   (:var mv20634 :isa be :subject mv20633 :predicate mv20639 :present "PRESENT")
   (:var mv20633 :isa what)
   (:var mv20639 :isa inhibitor :plural t :quantifier mv20635 :protein mv20632 :raw-text
    "inhibitors")
   (:var mv20635 :isa some :word "some")
   (:var mv20632 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What are some drugs that inhibit BRAF?"
   (:var mv20641 :isa be :subject mv20640 :predicate mv20649 :present "PRESENT")
   (:var mv20640 :isa what)
   (:var mv20649 :isa drug :plural t :predication mv20646 :quantifier mv20642 :raw-text "drugs")
   (:var mv20646 :isa inhibit :agent mv20649 :that-rel t :object mv20647 :present "PRESENT"
    :raw-text "inhibit")
   (:var mv20647 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv20642 :isa some :word "some"))
  ("What are some genes in the MAPK signaling pathway?"
   (:var mv20652 :isa be :subject mv20651 :predicate mv20661 :present "PRESENT")
   (:var mv20651 :isa what)
   (:var mv20661 :isa gene :plural t :context mv20650 :quantifier mv20653 :raw-text "genes")
   (:var mv20650 :isa signaling-pathway :has-determiner "THE" :modifier mv20658 :raw-text
    "signaling pathway")
   (:var mv20658 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv20653 :isa some :word "some"))
  ("What are some proteins in the MAPK signaling pathway?"
   (:var mv20664 :isa be :subject mv20663 :predicate mv20673 :present "PRESENT")
   (:var mv20663 :isa what)
   (:var mv20673 :isa protein :plural t :in-pathway mv20662 :quantifier mv20665 :raw-text
    "proteins")
   (:var mv20662 :isa signaling-pathway :has-determiner "THE" :modifier mv20670 :raw-text
    "signaling pathway")
   (:var mv20670 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv20665 :isa some :word "some"))
  ("What are the members of RAS?"
   (:var mv20675 :isa be :subject mv20674 :predicate mv20683 :present "PRESENT")
   (:var mv20674 :isa what) (:var mv20683 :isa member :plural t :set mv20680 :has-determiner "THE")
   (:var mv20680 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv20688 :isa be :subject mv20687 :predicate mv20699 :present "PRESENT")
   (:var mv20687 :isa what)
   (:var mv20699 :isa micro-rna :plural t :predication mv20693 :has-determiner "THE" :raw-text
    "miRNAS")
   (:var mv20693 :isa regulate :agent mv20699 :that-rel t :object mv20697 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20697 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv20694 mv20695 mv20684 mv20685 mv20686))
   (:var mv20694 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv20695 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20684 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20685 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv20686 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the regulators of MAPPK14 in bladder"
   (:var mv20701 :isa be :subject mv20700 :predicate mv20714 :present "PRESENT")
   (:var mv20700 :isa what)
   (:var mv20714 :isa regulator :plural t :theme mv20710 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20710 :isa bio-entity :organ mv20709 :name "MAPPK14")
   (:var mv20709 :isa bio-organ :name "bladder" :uid "BTO:0001418"))
  ("What are the regulators of SMURF2 in liver?"
   (:var mv20717 :isa be :subject mv20716 :predicate mv20727 :present "PRESENT")
   (:var mv20716 :isa what)
   (:var mv20727 :isa regulator :plural t :theme mv20715 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20715 :isa protein :organ mv20723 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv20723 :isa liver))
  ("What are the regulators of SMURF2?"
   (:var mv20730 :isa be :subject mv20729 :predicate mv20737 :present "PRESENT")
   (:var mv20729 :isa what)
   (:var mv20737 :isa regulator :plural t :theme mv20728 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20728 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What are the regulators of c-fos in lung?"
   (:var mv20740 :isa be :subject mv20739 :predicate mv20750 :present "PRESENT")
   (:var mv20739 :isa what)
   (:var mv20750 :isa regulator :plural t :theme mv20738 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20738 :isa protein :organ mv20746 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv20746 :isa lung))
  ("What are the regulators of mapk14 in bladeeer"
   (:var mv20753 :isa be :subject mv20752 :predicate mv20763 :present "PRESENT")
   (:var mv20752 :isa what)
   (:var mv20763 :isa regulator :plural t :theme mv20751 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20751 :isa protein :raw-text "mapk14" :uid "UP:Q16539" :name "MK14_HUMAN"))
  ("What are the regulators of mapk14"
   (:var mv20766 :isa be :subject mv20765 :predicate mv20773 :present "PRESENT")
   (:var mv20765 :isa what)
   (:var mv20773 :isa regulator :plural t :theme mv20764 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20764 :isa protein :raw-text "mapk14" :uid "UP:Q16539" :name "MK14_HUMAN"))
  ("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
   (:var mv20793 :isa copular-predication :item mv20778 :value mv20776 :predicate mv20779)
   (:var mv20778 :isa what) (:var mv20776 :isa in-common :theme mv20791)
   (:var mv20791 :isa gene :plural t :has-determiner "THE" :expresses mv20788 :raw-text "genes")
   (:var mv20788 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv20783 mv20784 mv20777))
   (:var mv20783 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20784 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv20777 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20779 :isa be :predicate mv20789 :present "PRESENT")
   (:var mv20789 :isa transcription-factor :plural t :has-determiner "THE" :raw-text
    "transcription factors"))
  ("What are the transcription factors that regulate EELK1 and SRF?"
   (:var mv20797 :isa be :subject mv20796 :predicate mv20808 :present "PRESENT")
   (:var mv20796 :isa what)
   (:var mv20808 :isa transcription-factor :plural t :predication mv20800 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv20800 :isa regulate :agent mv20808 :that-rel t :object mv20806 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20806 :isa collection :raw-text "EELK1 and SRF" :type protein :number 2 :items
    (mv20805 mv20804))
   (:var mv20805 :isa bio-entity :name "EELK1")
   (:var mv20804 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
   (:var mv20814 :isa be :subject mv20813 :predicate mv20826 :present "PRESENT")
   (:var mv20813 :isa what)
   (:var mv20826 :isa transcription-factor :plural t :predication mv20817 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv20817 :isa regulate :agent mv20826 :that-rel t :object mv20824 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20824 :isa collection :raw-text "EGFR, SRF, STAAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv20818 mv20819 mv20823 mv20811 mv20812))
   (:var mv20818 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv20819 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20823 :isa bio-entity :name "STAAT3")
   (:var mv20811 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv20812 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv20833 :isa be :subject mv20832 :predicate mv20842 :present "PRESENT")
   (:var mv20832 :isa what)
   (:var mv20842 :isa transcription-factor :plural t :predication mv20836 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv20836 :isa regulate :agent mv20842 :that-rel t :object mv20840 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20840 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv20837 mv20838 mv20829 mv20830 mv20831))
   (:var mv20837 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv20838 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20829 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20830 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv20831 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
   (:var mv20847 :isa be :subject mv20846 :predicate mv20860 :present "PRESENT")
   (:var mv20846 :isa what)
   (:var mv20860 :isa regulator :plural t :theme mv20856 :has-determiner "THE" :context mv20849
    :raw-text "regulators")
   (:var mv20856 :isa collection :raw-text "CCND1, FOXM1, DHFR, and KLF4" :type protein :number 4
    :items (mv20843 mv20844 mv20854 mv20845))
   (:var mv20843 :isa protein :raw-text "CCND1" :uid "UP:P24385" :name "CCND1_HUMAN")
   (:var mv20844 :isa protein :raw-text "FOXM1" :uid "UP:Q08050" :name "FOXM1_HUMAN")
   (:var mv20854 :isa protein :raw-text "DHFR" :uid "UP:P00374" :name "DYR_HUMAN")
   (:var mv20845 :isa protein :raw-text "KLF4" :uid "UP:O43474" :name "KLF4_HUMAN")
   (:var mv20849 :isa upstream-segment :raw-text "upstream"))
  ("What cell cycle genes are regulated by FOS?"
   (:var mv20871 :isa regulate :object mv20870 :agent mv20868 :present "PRESENT" :raw-text
    "regulated")
   (:var mv20870 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv20861 :raw-text
    "genes")
   (:var mv20861 :isa cellular-process :raw-text "cell cycle" :name "cell cycle" :uid "GO:0007049")
   (:var mv20868 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What does ERBB regulate?"
   (:var mv20876 :isa regulate :|affected-process-OR-object| mv20873 :agent mv20875 :present
    "PRESENT" :raw-text "regulate")
   (:var mv20873 :isa what)
   (:var mv20875 :isa protein :raw-text "ERBB" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What does it regulate in liver"
   (:var mv20880 :isa regulate :|affected-process-OR-object| mv20877 :|agent-OR-cause| mv20879
    :organ mv20882 :present "PRESENT" :raw-text "regulate")
   (:var mv20877 :isa what) (:var mv20879 :isa pronoun/inanimate :word "it")
   (:var mv20882 :isa liver))
  ("What does miR-20b-5p target"
   (:var mv20888 :isa target :|affected-process-OR-object| mv20885 :agent mv20884 :present
    "PRESENT" :raw-text "target")
   (:var mv20885 :isa what)
   (:var mv20884 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What does p53 regulate?"
   (:var mv20892 :isa regulate :|affected-process-OR-object| mv20890 :agent mv20889 :present
    "PRESENT" :raw-text "regulate")
   (:var mv20890 :isa what)
   (:var mv20889 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What does rb1 regulate"
   (:var mv20896 :isa regulate :|affected-process-OR-object| mv20894 :agent mv20893 :present
    "PRESENT" :raw-text "regulate")
   (:var mv20894 :isa what)
   (:var mv20893 :isa protein :raw-text "rb1" :uid "UP:P06400" :name "RB_HUMAN"))
  ("What does smad2 regulate"
   (:var mv20900 :isa regulate :|affected-process-OR-object| mv20898 :agent mv20897 :present
    "PRESENT" :raw-text "regulate")
   (:var mv20898 :isa what)
   (:var mv20897 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What does stat regulate"
   (:var mv20904 :isa regulate :|affected-process-OR-object| mv20901 :agent mv20903 :present
    "PRESENT" :raw-text "regulate")
   (:var mv20901 :isa what)
   (:var mv20903 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What downregulates fzd8?"
   (:var mv20907 :isa downregulate :|agent-OR-cause| mv20906 :object mv20905 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv20906 :isa what)
   (:var mv20905 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What drug could I use to target pancreatic cancer?"
   (:var mv20921 :isa bio-use :patient mv20910 :modal mv20911 :agent mv20912 :theme mv20920
    :present "PRESENT" :raw-text "use")
   (:var mv20910 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv20911 :isa could)
   (:var mv20912 :isa interlocutor :name "speaker")
   (:var mv20920 :isa target :object mv20908 :raw-text "target")
   (:var mv20908 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug should I use for pancreatic cancer?"
   (:var mv20933 :isa bio-use :object mv20924 :modal mv20925 :agent mv20926 :disease mv20922
    :present "PRESENT" :raw-text "use")
   (:var mv20924 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv20925 :isa should)
   (:var mv20926 :isa interlocutor :name "speaker")
   (:var mv20922 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drugs are inhibitors of GRB2?"
   (:var mv20938 :isa be :subject mv20942 :predicate mv20944 :present "PRESENT")
   (:var mv20942 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv20944 :isa inhibitor :plural t :protein mv20934 :raw-text "inhibitors")
   (:var mv20934 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("What drugs inhibit MAP2K1?"
   (:var mv20949 :isa inhibit :agent mv20950 :object mv20945 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv20950 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv20945 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What drugs regulate BRAF?"
   (:var mv20954 :isa regulate :agent mv20956 :object mv20955 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20956 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv20955 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What drugs target BRAF?"
   (:var mv20961 :isa target :agent mv20963 :object mv20962 :present "PRESENT" :raw-text "target")
   (:var mv20963 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv20962 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are downstream of stat3?"
   (:var mv20968 :isa be :subject mv20972 :predicate mv20969 :present "PRESENT")
   (:var mv20972 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20969 :isa downstream-segment :pathwaycomponent mv20964 :raw-text "downstream")
   (:var mv20964 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are in the MAPK signaling pathway?"
   (:var mv20987 :isa copular-predication-of-pp :item mv20982 :value mv20986 :prep "IN" :predicate
    mv20978)
   (:var mv20982 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20986 :isa gene :plural t :context mv20974 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20974 :isa signaling-pathway :has-determiner "THE" :modifier mv20981 :raw-text
    "signaling pathway")
   (:var mv20981 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv20978 :isa be :present "PRESENT"))
  ("What genes are in the MAPK signaling pathways?"
   (:var mv21005 :isa copular-predication-of-pp :item mv20998 :value mv21004 :prep "IN" :predicate
    mv20994)
   (:var mv20998 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21004 :isa gene :plural t :context mv21000 :has-determiner "WHAT" :raw-text "genes")
   (:var mv21000 :isa signaling-pathway :plural t :has-determiner "THE" :modifier mv20997 :raw-text
    "signaling pathways")
   (:var mv20997 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv20994 :isa be :present "PRESENT"))
  ("What genes are in the immune system pathway?"
   (:var mv21020 :isa copular-predication-of-pp :item mv21015 :value mv21019 :prep "IN" :predicate
    mv21011)
   (:var mv21015 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21019 :isa gene :plural t :context mv21014 :has-determiner "WHAT" :raw-text "genes")
   (:var mv21014 :isa pathway :has-determiner "THE" :non-cellular-location mv21007 :raw-text
    "pathway")
   (:var mv21007 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv21011 :isa be :present "PRESENT"))
  ("What genes are in the prolactin signaling pathway?"
   (:var mv21035 :isa copular-predication-of-pp :item mv21030 :value mv21034 :prep "IN" :predicate
    mv21026)
   (:var mv21030 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21034 :isa gene :plural t :context mv21022 :has-determiner "WHAT" :raw-text "genes")
   (:var mv21022 :isa signaling-pathway :has-determiner "THE" :modifier mv21029 :raw-text
    "signaling pathway")
   (:var mv21029 :isa protein :raw-text "prolactin" :uid "UP:P01236" :name "PRL_HUMAN")
   (:var mv21026 :isa be :present "PRESENT"))
  ("What genes are involved in the IL-12 pathway?"
   (:var mv21048 :isa involve :object mv21047 :|context-OR-theme| mv21046 :present "PRESENT")
   (:var mv21047 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21046 :isa pathway :has-determiner "THE" :modifier mv21038 :raw-text "pathway")
   (:var mv21038 :isa protein :raw-text "IL-12" :uid "NCIT:C20514" :name "NCIT:C20514"))
  ("What genes are involved in the Prolactin pathway?"
   (:var mv21060 :isa involve :object mv21059 :|context-OR-theme| mv21058 :present "PRESENT")
   (:var mv21059 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21058 :isa pathway :has-determiner "THE" :modifier mv21057 :raw-text "pathway")
   (:var mv21057 :isa protein :raw-text "Prolactin" :uid "UP:P01236" :name "PRL_HUMAN"))
  ("What genes are involved in the il-12 pathway?"
   (:var mv21072 :isa involve :object mv21071 :|context-OR-theme| mv21070 :present "PRESENT")
   (:var mv21071 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21070 :isa pathway :has-determiner "THE" :modifier mv21062 :raw-text "pathway")
   (:var mv21062 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12"))
  ("What genes are involved in the immune system pathway?"
   (:var mv21084 :isa involve :object mv21083 :|context-OR-theme| mv21082 :present "PRESENT")
   (:var mv21083 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21082 :isa pathway :has-determiner "THE" :non-cellular-location mv21074 :raw-text
    "pathway")
   (:var mv21074 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
   (:var mv21100 :isa regulate :object mv21099 :agent mv21098 :present "PRESENT" :superlative
    mv21093 :adverb mv21094 :raw-text "regulated")
   (:var mv21099 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21098 :isa collection :raw-text "miR-335-5p, miR-155-5p and miR-145-5p" :type micro-rna
    :number 3 :items (mv21086 mv21087 mv21088))
   (:var mv21086 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv21087 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv21088 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv21093 :isa superlative-quantifier :name "most")
   (:var mv21094 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
   (:var mv21117 :isa regulate :object mv21116 :agent mv21115 :present "PRESENT" :superlative
    mv21110 :adverb mv21111 :raw-text "regulated")
   (:var mv21116 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21115 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p"
    :type micro-rna :number 4 :items (mv21102 mv21103 mv21104 mv21105))
   (:var mv21102 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv21103 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv21104 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv21105 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075")
   (:var mv21110 :isa superlative-quantifier :name "most")
   (:var mv21111 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
   (:var mv21134 :isa regulate :object mv21133 :agent mv21132 :present "PRESENT" :superlative
    mv21127 :adverb mv21128 :raw-text "regulated")
   (:var mv21133 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21132 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p"
    :type micro-rna :number 4 :items (mv21119 mv21120 mv21121 mv21122))
   (:var mv21119 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv21120 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv21121 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv21122 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075")
   (:var mv21127 :isa superlative-quantifier :name "most")
   (:var mv21128 :isa frequently :name "frequently"))
  ("What genes are regulated by FAKEPRTN"
   (:var mv21144 :isa regulate :object mv21143 :agent mv21142 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21143 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21142 :isa bio-entity :name "FAKEPRTN"))
  ("What genes are regulated by elk1 and srf?"
   (:var mv21157 :isa regulate :object mv21156 :agent mv21155 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21156 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21155 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv21146 mv21154))
   (:var mv21146 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv21154 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
   (:var mv21170 :isa regulate :object mv21169 :agent mv21168 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21169 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21168 :isa collection :raw-text "miR-20b-5p and MIR-29B-1-5P" :type micro-rna :number 2
    :items (mv21159 mv21160))
   (:var mv21159 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv21160 :isa micro-rna :raw-text "MIR-29B-1-5P" :name "microRNA 29b-1-5pm" :uid
    "MIMAT0004514"))
  ("What genes are regulated by smda2"
   (:var mv21182 :isa regulate :object mv21181 :agent mv21180 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21181 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21180 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by srf"
   (:var mv21192 :isa regulate :object mv21191 :agent mv21190 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21191 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21190 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by stat3 and srf"
   (:var mv21205 :isa regulate :object mv21204 :agent mv21203 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21204 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21203 :isa collection :raw-text "stat3 and srf" :type protein :number 2 :items
    (mv21194 mv21202))
   (:var mv21194 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21202 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are targeted by lung cancer?"
   (:var mv21215 :isa target :object mv21214 :cause mv21207 :present "PRESENT" :raw-text
    "targeted")
   (:var mv21214 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21207 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes are there in the MAPK signaling pathway?"
   (:var mv21232 :isa copular-predication-of-pp :item mv21227 :value mv21231 :prep "IN" :predicate
    mv21221)
   (:var mv21227 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21231 :isa gene :plural t :context mv21217 :has-determiner "WHAT" :raw-text "genes")
   (:var mv21217 :isa signaling-pathway :has-determiner "THE" :modifier mv21226 :raw-text
    "signaling pathway")
   (:var mv21226 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv21221 :isa be :present "PRESENT"))
  ("What genes are used in the MAPK signaling pathway?"
   (:var mv21244 :isa bio-use :object mv21243 :context mv21234 :present "PRESENT" :raw-text "used")
   (:var mv21243 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21234 :isa signaling-pathway :has-determiner "THE" :modifier mv21242 :raw-text
    "signaling pathway")
   (:var mv21242 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv21252 :isa target :object mv21253 :cause mv21246 :present "PRESENT" :raw-text "target")
   (:var mv21253 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21246 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes does miR-20b-5p target?"
   (:var mv21260 :isa target :object mv21261 :agent mv21254 :present "PRESENT" :raw-text "target")
   (:var mv21261 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21254 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What genes does miR-562 target?"
   (:var mv21268 :isa target :object mv21269 :agent mv21262 :present "PRESENT" :raw-text "target")
   (:var mv21269 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21262 :isa micro-rna :raw-text "miR-562" :name "microRNA 562" :uid "MI0003569"))
  ("What genes does smad2 upregulate?"
   (:var mv21275 :isa upregulate :object mv21276 :agent mv21270 :present "PRESENT" :raw-text
    "upregulate")
   (:var mv21276 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21270 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes does stat3 regulate in liver cells?"
   (:var mv21282 :isa regulate :object mv21287 :agent mv21277 :cell-type mv21288 :present "PRESENT"
    :raw-text "regulate")
   (:var mv21287 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21277 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21288 :isa cell-type :plural t :non-cellular-location mv21284)
   (:var mv21284 :isa liver))
  ("What genes does stat3 regulate in liver?"
   (:var mv21295 :isa regulate :object mv21298 :agent mv21290 :organ mv21297 :present "PRESENT"
    :raw-text "regulate")
   (:var mv21298 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21290 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21297 :isa liver))
  ("What genes does stat3 regulate in lung?"
   (:var mv21305 :isa regulate :object mv21308 :agent mv21300 :organ mv21307 :present "PRESENT"
    :raw-text "regulate")
   (:var mv21308 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21300 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21307 :isa lung))
  ("What genes does stat3 regulate"
   (:var mv21315 :isa regulate :object mv21316 :agent mv21310 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21316 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21310 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes in the liver does stat3 regulate?"
   (:var mv21325 :isa regulate :object mv21328 :agent mv21317 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21328 :isa gene :plural t :organ mv21323 :has-determiner "WHAT" :raw-text "genes")
   (:var mv21323 :isa liver :has-determiner "THE")
   (:var mv21317 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes is stat3 upstream from?"
   (:var mv21333 :isa be :subject mv21337 :predicate mv21334 :present "PRESENT")
   (:var mv21337 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21334 :isa upstream-segment :modifier mv21329 :raw-text "upstream")
   (:var mv21329 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes is stat3 upstream of?"
   (:var mv21342 :isa be :subject mv21346 :predicate mv21343 :present "PRESENT")
   (:var mv21346 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21343 :isa upstream-segment :pathwaycomponent mv21346 :modifier mv21338 :raw-text
    "upstream")
   (:var mv21338 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes regulated by FOS are kinases?"
   (:var mv21353 :isa be :subject mv21358 :predicate mv21355 :present "PRESENT")
   (:var mv21358 :isa gene :plural t :predication mv21350 :has-determiner "WHAT" :raw-text "genes")
   (:var mv21350 :isa regulate :object mv21358 :agent mv21352 :past "PAST" :raw-text "regulated")
   (:var mv21352 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv21355 :isa kinase :plural t :raw-text "kinases"))
  ("What genes regulated by stat3 are kinases?"
   (:var mv21365 :isa be :subject mv21370 :predicate mv21367 :present "PRESENT")
   (:var mv21370 :isa gene :plural t :predication mv21363 :has-determiner "WHAT" :raw-text "genes")
   (:var mv21363 :isa regulate :object mv21370 :agent mv21359 :past "PAST" :raw-text "regulated")
   (:var mv21359 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21367 :isa kinase :plural t :raw-text "kinases"))
  ("What immune pathways involve KRAS and ELK1?"
   (:var mv21376 :isa involve :theme mv21381 :object mv21379 :present "PRESENT")
   (:var mv21381 :isa pathway :plural t :has-determiner "WHAT" :modifier mv21373 :raw-text
    "pathways")
   (:var mv21373 :isa immune :name "immune")
   (:var mv21379 :isa collection :raw-text "KRAS and ELK1" :type protein :number 2 :items
    (mv21377 mv21371))
   (:var mv21377 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv21371 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve SRF?"
   (:var mv21386 :isa involve :theme mv21389 :object mv21387 :present "PRESENT")
   (:var mv21389 :isa pathway :plural t :has-determiner "WHAT" :modifier mv21383 :raw-text
    "pathways")
   (:var mv21383 :isa immune :name "immune")
   (:var mv21387 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What immune pathways involve kras and elk1?"
   (:var mv21395 :isa involve :theme mv21400 :object mv21398 :present "PRESENT")
   (:var mv21400 :isa pathway :plural t :has-determiner "WHAT" :modifier mv21392 :raw-text
    "pathways")
   (:var mv21392 :isa immune :name "immune")
   (:var mv21398 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv21396 mv21390))
   (:var mv21396 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv21390 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve tap1 and jak1?"
   (:var mv21407 :isa involve :theme mv21411 :object mv21409 :present "PRESENT")
   (:var mv21411 :isa pathway :plural t :has-determiner "WHAT" :modifier mv21404 :raw-text
    "pathways")
   (:var mv21404 :isa immune :name "immune")
   (:var mv21409 :isa collection :raw-text "tap1 and jak1" :type protein :number 2 :items
    (mv21401 mv21402))
   (:var mv21401 :isa protein :raw-text "tap1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv21402 :isa protein :raw-text "jak1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What inhibits BRAF?"
   (:var mv21413 :isa inhibit :|agent-OR-cause| mv21412 :object mv21414 :present "PRESENT"
    :raw-text "inhibits")
   (:var mv21412 :isa what)
   (:var mv21414 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is STAT3?" (:var mv21417 :isa be :subject mv21416 :predicate mv21415 :present "PRESENT")
   (:var mv21416 :isa what)
   (:var mv21415 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is STAT?" (:var mv21419 :isa be :subject mv21418 :predicate mv21420 :present "PRESENT")
   (:var mv21418 :isa what)
   (:var mv21420 :isa protein :raw-text "STAT" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What is downstream of stat3?"
   (:var mv21423 :isa be :subject mv21422 :predicate mv21424 :present "PRESENT")
   (:var mv21422 :isa what)
   (:var mv21424 :isa downstream-segment :pathwaycomponent mv21421 :raw-text "downstream")
   (:var mv21421 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is erbb?" (:var mv21429 :isa be :subject mv21428 :predicate mv21430 :present "PRESENT")
   (:var mv21428 :isa what)
   (:var mv21430 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What is errb?" (:var mv21432 :isa be :subject mv21431 :predicate mv21433 :present "PRESENT")
   (:var mv21431 :isa what) (:var mv21433 :isa bio-entity :name "errb"))
  ("What is regulated by elk1"
   (:var mv21439 :isa regulate :|affected-process-OR-object| mv21435 :agent mv21434 :present
    "PRESENT" :raw-text "regulated")
   (:var mv21435 :isa what)
   (:var mv21434 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What is the evidence that kras decreases frizzled8?"
   (:var mv21443 :isa be :subject mv21442 :predicate mv21449 :present "PRESENT")
   (:var mv21442 :isa what) (:var mv21449 :isa evidence :statement mv21448 :has-determiner "THE")
   (:var mv21448 :isa decrease :agent mv21447 :object mv21441 :present "PRESENT" :raw-text
    "decreases")
   (:var mv21447 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv21441 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that kras decreases the amount of frizzled8?"
   (:var mv21452 :isa be :subject mv21451 :predicate mv21462 :present "PRESENT")
   (:var mv21451 :isa what) (:var mv21462 :isa evidence :statement mv21457 :has-determiner "THE")
   (:var mv21457 :isa decrease :agent mv21456 :|affected-process-OR-object| mv21459 :present
    "PRESENT" :raw-text "decreases")
   (:var mv21456 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv21459 :isa bio-amount :measured-item mv21450 :has-determiner "THE" :raw-text "amount")
   (:var mv21450 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the target of Selumetinib?"
   (:var mv21464 :isa be :subject mv21463 :predicate mv21466 :present "PRESENT")
   (:var mv21463 :isa what)
   (:var mv21466 :isa target-protein :treatment mv21469 :has-determiner "THE" :raw-text "target")
   (:var mv21469 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What kinases does smad2 regulate"
   (:var mv21476 :isa regulate :object mv21477 :agent mv21471 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21477 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv21471 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv21486 :isa regulate :agent mv21491 :object mv21490 :present "PRESENT" :adverb mv21484
    :adverb mv21485 :raw-text "regulate")
   (:var mv21491 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv21490 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv21487 mv21488 mv21478 mv21479 mv21480))
   (:var mv21487 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv21488 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21478 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21479 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv21480 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv21484 :isa superlative-quantifier :name "most")
   (:var mv21485 :isa frequently :name "frequently"))
  ("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv21498 :isa regulate :agent mv21503 :object mv21502 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21503 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv21502 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv21499 mv21500 mv21492 mv21493 mv21494))
   (:var mv21499 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv21500 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21492 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21493 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv21494 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What micrornas are regulated by p53?"
   (:var mv21512 :isa regulate :object mv21511 :agent mv21504 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21511 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv21504 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What micrornas regulate genes in the mapk signaling pathways"
   (:var mv21519 :isa regulate :agent mv21525 :object mv21529 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21525 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv21529 :isa gene :plural t :context mv21527 :raw-text "genes")
   (:var mv21527 :isa signaling-pathway :plural t :has-determiner "THE" :modifier mv21524 :raw-text
    "signaling pathways")
   (:var mv21524 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
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
   (:var mv21533 :isa bio-entity :has-determiner "WHAT" :name "pahtways"))
  ("What pathways are common to STAT3 and SRF?"
   (:var mv21546 :isa copular-predication :item mv21544 :value mv21539 :predicate mv21538)
   (:var mv21544 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21539 :isa common :theme mv21543)
   (:var mv21543 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv21534 mv21542))
   (:var mv21534 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21542 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21538 :isa be :present "PRESENT"))
  ("What pathways involve cfos?"
   (:var mv21550 :isa involve :theme mv21552 :object mv21551 :present "PRESENT")
   (:var mv21552 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21551 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What pathways involve kras and elk1?"
   (:var mv21557 :isa involve :theme mv21561 :object mv21560 :present "PRESENT")
   (:var mv21561 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21560 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv21558 mv21553))
   (:var mv21558 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv21553 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What pathways involve the SRF transcription factor?"
   (:var mv21566 :isa involve :theme mv21569 :object mv21562 :present "PRESENT")
   (:var mv21569 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21562 :isa transcription-factor :has-determiner "THE" :modifier mv21568 :raw-text
    "transcription factor")
   (:var mv21568 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways utilize srf and is srf a kinase"
   (:var mv21581 :isa collection :raw-text "What pathways utilize srf and is srf" :type bio-utilize
    :number 2 :items (mv21573 mv21576))
   (:var mv21573 :isa bio-utilize :agent mv21580 :object mv21574 :present "PRESENT" :raw-text
    "utilize")
   (:var mv21580 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21574 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21576 :isa be :subject mv21580 :predicate mv21577 :present "PRESENT")
   (:var mv21577 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What proteins are in the MAPK family?"
   (:var mv21597 :isa copular-predication-of-pp :item mv21591 :value mv21596 :prep "IN" :predicate
    mv21585)
   (:var mv21591 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21596 :isa protein :plural t :in-family mv21592 :has-determiner "WHAT" :raw-text
    "proteins")
   (:var mv21592 :isa protein-family :has-determiner "THE" :raw-text "MAPK" :name
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
   (:var mv21585 :isa be :present "PRESENT"))
  ("What proteins are targeted by lung cancer?"
   (:var mv21607 :isa target :object mv21606 :cause mv21599 :present "PRESENT" :raw-text
    "targeted")
   (:var mv21606 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21599 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does PLX-4720 target?"
   (:var mv21615 :isa target :object mv21616 :agent mv21609 :present "PRESENT" :raw-text "target")
   (:var mv21616 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21609 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What proteins does lung cancer target?"
   (:var mv21623 :isa target :object mv21624 :cause mv21617 :present "PRESENT" :raw-text "target")
   (:var mv21624 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21617 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does vemurafenib target?"
   (:var mv21631 :isa target :object mv21632 :agent mv21629 :present "PRESENT" :raw-text "target")
   (:var mv21632 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21629 :isa drug :raw-text "vemurafenib" :name "vemurafenib" :uid "PCID:42611257"))
  ("What proteins might lead to the development of lung cancer?"
   (:var mv21638 :isa lead :agent mv21643 :theme mv21641 :modal mv21637 :raw-text "lead")
   (:var mv21643 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21641 :isa development :disease mv21633 :has-determiner "THE" :raw-text "development")
   (:var mv21633 :isa cancer :name "lung cancer" :uid "TS-0571") (:var mv21637 :isa might))
  ("What proteins might lead to the development of pancreatic cancer."
   (:var mv21651 :isa lead :agent mv21656 :theme mv21654 :modal mv21650 :raw-text "lead")
   (:var mv21656 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21654 :isa development :disease mv21646 :has-determiner "THE" :raw-text "development")
   (:var mv21646 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv21650 :isa might))
  ("What reactome pathways involve immune signaling?"
   (:var mv21663 :isa involve :theme mv21667 :object mv21665 :present "PRESENT")
   (:var mv21667 :isa pathway :plural t :has-determiner "WHAT" :modifier mv21660 :raw-text
    "pathways")
   (:var mv21660 :isa database :name "Reactome" :uid "Reactome")
   (:var mv21665 :isa signal :modifier mv21664 :raw-text "signaling")
   (:var mv21664 :isa immune :name "immune"))
  ("What regulates HGF?"
   (:var mv21669 :isa regulate :|agent-OR-cause| mv21668 :object mv21670 :present "PRESENT"
    :raw-text "regulates")
   (:var mv21668 :isa what)
   (:var mv21670 :isa protein :raw-text "HGF" :uid "UP:P14210" :name "HGF_HUMAN"))
  ("What regulates SMURF2?"
   (:var mv21673 :isa regulate :|agent-OR-cause| mv21672 :object mv21671 :present "PRESENT"
    :raw-text "regulates")
   (:var mv21672 :isa what)
   (:var mv21671 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What regulates smurf2 in liver"
   (:var mv21676 :isa regulate :|agent-OR-cause| mv21675 :object mv21674 :present "PRESENT"
    :raw-text "regulates")
   (:var mv21675 :isa what)
   (:var mv21674 :isa protein :organ mv21678 :raw-text "smurf2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv21678 :isa liver))
  ("What signaling pathways are shared by RELA and ELK1?"
   (:var mv21691 :isa share :object mv21690 :participant mv21689 :present "PRESENT" :raw-text
    "shared")
   (:var mv21690 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv21689 :isa collection :raw-text "RELA and ELK1" :type protein :number 2 :items
    (mv21687 mv21682))
   (:var mv21687 :isa protein :raw-text "RELA" :uid "UP:Q04206" :name "TF65_HUMAN")
   (:var mv21682 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What signaling pathways are shared by STAT3 and SRF?"
   (:var mv21704 :isa share :object mv21703 :participant mv21702 :present "PRESENT" :raw-text
    "shared")
   (:var mv21703 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv21702 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv21695 mv21701))
   (:var mv21695 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21701 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
   (:var mv21718 :isa share :object mv21717 :participant mv21716 :present "PRESENT" :raw-text
    "shared")
   (:var mv21717 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv21716 :isa collection :raw-text "STAT3, SOCS3 and SRF" :type protein :number 3 :items
    (mv21708 mv21709 mv21715))
   (:var mv21708 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21709 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21715 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What tissues is STAT3 expressed in?"
   (:var mv21727 :isa tissue :plural t :has-determiner "WHAT"))
  ("What transcription factor produces SMURF2?"
   (:var mv21731 :isa bio-produce :agent mv21728 :object mv21729 :present "PRESENT" :raw-text
    "produces")
   (:var mv21728 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv21729 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factor transcribes SMURF2?"
   (:var mv21735 :isa transcribe :agent mv21732 :object mv21733 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv21732 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv21733 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv21756 :isa copular-predication :item mv21752 :value mv21744 :predicate mv21743)
   (:var mv21752 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21744 :isa common :theme mv21754)
   (:var mv21754 :isa gene :plural t :has-determiner "THE" :expresses mv21751 :raw-text "genes")
   (:var mv21751 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv21738 mv21739 mv21747 mv21740 mv21741))
   (:var mv21738 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21739 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21747 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv21740 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv21741 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv21743 :isa be :present "PRESENT"))
  ("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv21775 :isa copular-predication :item mv21771 :value mv21764 :predicate mv21763)
   (:var mv21771 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21764 :isa common :theme mv21773)
   (:var mv21773 :isa gene :plural t :has-determiner "THE" :expresses mv21770 :raw-text "genes")
   (:var mv21770 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv21759 mv21760 mv21761))
   (:var mv21759 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21760 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21761 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv21763 :isa be :present "PRESENT"))
  ("What genes does stat3 regulate?"
   (:var mv21781 :isa regulate :object mv21782 :agent mv21776 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21782 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21776 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What transcription factors are common to these genes?"
   (:var mv21795 :isa copular-predication :item mv21792 :value mv21787 :predicate mv21786)
   (:var mv21792 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21787 :isa common :theme mv21793)
   (:var mv21793 :isa gene :plural t :has-determiner "THESE" :raw-text "genes")
   (:var mv21786 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv21816 :isa copular-predication :item mv21812 :value mv21798 :predicate mv21804)
   (:var mv21812 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21798 :isa in-common :theme mv21814)
   (:var mv21814 :isa gene :plural t :has-determiner "THE" :expresses mv21811 :raw-text "genes")
   (:var mv21811 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv21799 mv21800 mv21807 mv21801 mv21802))
   (:var mv21799 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21800 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21807 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv21801 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv21802 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv21804 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv21835 :isa copular-predication :item mv21831 :value mv21819 :predicate mv21824)
   (:var mv21831 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21819 :isa in-common :theme mv21833)
   (:var mv21833 :isa gene :plural t :has-determiner "THE" :expresses mv21830 :raw-text "genes")
   (:var mv21830 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv21820 mv21821 mv21822))
   (:var mv21820 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21821 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21822 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv21824 :isa be :present "PRESENT"))
  ("What transcription factors are regulators of SMURF2 in liver?"
   (:var mv21840 :isa be :subject mv21846 :predicate mv21849 :present "PRESENT")
   (:var mv21846 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21849 :isa regulator :plural t :theme mv21838 :raw-text "regulators")
   (:var mv21838 :isa protein :organ mv21845 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv21845 :isa liver))
  ("What transcription factors are regulators of SMURF2?"
   (:var mv21854 :isa be :subject mv21858 :predicate mv21860 :present "PRESENT")
   (:var mv21858 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21860 :isa regulator :plural t :theme mv21852 :raw-text "regulators")
   (:var mv21852 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
   (:var mv21876 :isa share :object mv21875 :participant mv21878 :present "PRESENT" :raw-text
    "shared")
   (:var mv21875 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21878 :isa gene :plural t :has-determiner "THE" :expresses mv21874 :raw-text "genes")
   (:var mv21874 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv21869 mv21870 mv21863))
   (:var mv21869 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21870 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv21863 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What transcription factors regulate SMURF2 in liver?"
   (:var mv21884 :isa regulate :agent mv21887 :object mv21882 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21887 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21882 :isa protein :organ mv21886 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv21886 :isa liver))
  ("What transcription factors regulate ZEB1?"
   (:var mv21893 :isa regulate :agent mv21894 :object mv21891 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21894 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21891 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("What transcription factors regulate erk"
   (:var mv21898 :isa regulate :agent mv21900 :object mv21899 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21900 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21899 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors regulate genes in the mapk signaling pathwya"
   (:var mv21904 :isa regulate :agent mv21912 :theme mv21911 :object mv21906 :present "PRESENT"
    :raw-text "regulate")
   (:var mv21912 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21911 :isa bio-entity :has-determiner "THE" :modifier mv21909 :cellular-process mv21910
    :name "pathwya")
   (:var mv21909 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
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
   (:var mv21910 :isa signal :raw-text "signaling")
   (:var mv21906 :isa gene :plural t :raw-text "genes"))
  ("What transcription factors regulated frizzled8?"
   (:var mv21918 :isa regulate :agent mv21919 :object mv21916 :past "PAST" :raw-text "regulated")
   (:var mv21919 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21916 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What transcription factors transcribe SMURF2?"
   (:var mv21924 :isa transcribe :agent mv21925 :object mv21922 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv21925 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21922 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What upregulates fzd8?"
   (:var mv21928 :isa upregulate :|agent-OR-cause| mv21927 :object mv21926 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv21927 :isa what)
   (:var mv21926 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Where is STAT3 expressed?"
   (:var mv21934 :isa gene-transcript-express :location mv21930 :object mv21929 :past "PAST"
    :raw-text "expressed")
   (:var mv21930 :isa where)
   (:var mv21929 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which KEGG pathways involve SRF?"
   (:var mv21939 :isa involve :theme mv21942 :object mv21940 :present "PRESENT")
   (:var mv21942 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21936 :raw-text
    "pathways")
   (:var mv21936 :isa database :name "KEGG" :uid "KEGG")
   (:var mv21940 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which KEGG pathways use SRF?"
   (:var mv21948 :isa bio-use :agent mv21951 :object mv21949 :present "PRESENT" :raw-text "use")
   (:var mv21951 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21944 :raw-text
    "pathways")
   (:var mv21944 :isa database :name "KEGG" :uid "KEGG")
   (:var mv21949 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors regulate frizzled8?"
   (:var mv21956 :isa regulate :agent mv21957 :object mv21954 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21957 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21954 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which also regulate srf"
   (:var mv21961 :isa regulate :|agent-OR-cause| mv21958 :object mv21962 :present "PRESENT" :adverb
    mv21959 :raw-text "regulate")
   (:var mv21958 :isa which)
   (:var mv21962 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21959 :isa also :name "also"))
  ("Which apoptotic genes are regulated by stat3?"
   (:var mv21974 :isa regulate :object mv21973 :agent mv21963 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21973 :isa gene :plural t :has-determiner "WHICH" :cellular-process mv21965 :raw-text
    "genes")
   (:var mv21965 :isa apoptosis :raw-text "apoptotic")
   (:var mv21963 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which apoptotic genes is stat3 upstream of?"
   (:var mv21982 :isa be :subject mv21987 :predicate mv21983 :present "PRESENT")
   (:var mv21987 :isa gene :plural t :has-determiner "WHICH" :cellular-process mv21978 :raw-text
    "genes")
   (:var mv21978 :isa apoptosis :raw-text "apoptotic")
   (:var mv21983 :isa upstream-segment :pathwaycomponent mv21987 :modifier mv21976 :raw-text
    "upstream")
   (:var mv21976 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes are targeted by STAT3?"
   (:var mv21996 :isa target :object mv21995 :agent mv21988 :present "PRESENT" :raw-text
    "targeted")
   (:var mv21995 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv21988 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes regulated by stat3 are kinases?"
   (:var mv22004 :isa be :subject mv22009 :predicate mv22006 :present "PRESENT")
   (:var mv22009 :isa gene :plural t :predication mv22002 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv22002 :isa regulate :object mv22009 :agent mv21998 :past "PAST" :raw-text "regulated")
   (:var mv21998 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22006 :isa kinase :plural t :raw-text "kinases"))
  ("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv22028 :isa share :object mv22027 :participant mv22029 :present "PRESENT" :raw-text
    "shared")
   (:var mv22027 :isa pathway :plural t :has-determiner "WHICH" :modifier mv22015 :raw-text
    "pathways")
   (:var mv22015 :isa immune :name "immune")
   (:var mv22029 :isa gene :plural t :expresses mv22025 :raw-text "genes")
   (:var mv22025 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv22010 mv22011 mv22021 mv22012 mv22013))
   (:var mv22010 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22011 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv22021 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv22012 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv22013 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
   (:var mv22048 :isa share :object mv22047 :participant mv22050 :present "PRESENT" :raw-text
    "shared")
   (:var mv22047 :isa pathway :plural t :has-determiner "WHICH" :modifier mv22035 :raw-text
    "pathways")
   (:var mv22035 :isa immune :name "immune")
   (:var mv22050 :isa gene :plural t :has-determiner "THE" :expresses mv22045 :raw-text "genes")
   (:var mv22045 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv22031 mv22032 mv22033))
   (:var mv22031 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22032 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv22033 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which kegg pathways utilize genes regulated by smad2"
   (:var mv22057 :isa bio-utilize :agent mv22063 :object mv22059 :present "PRESENT" :raw-text
    "utilize")
   (:var mv22063 :isa pathway :plural t :has-determiner "WHICH" :modifier mv22054 :raw-text
    "pathways")
   (:var mv22054 :isa database :name "KEGG" :uid "KEGG")
   (:var mv22059 :isa gene :plural t :predication mv22060 :raw-text "genes")
   (:var mv22060 :isa regulate :object mv22059 :agent mv22052 :past "PAST" :raw-text "regulated")
   (:var mv22052 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which Reactome pathways utilize SRF?"
   (:var mv22070 :isa bio-utilize :agent mv22073 :object mv22071 :present "PRESENT" :raw-text
    "utilize")
   (:var mv22073 :isa pathway :plural t :has-determiner "WHICH" :modifier mv22067 :raw-text
    "pathways")
   (:var mv22067 :isa database :name "Reactome" :uid "Reactome")
   (:var mv22071 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which kegg pathways utilize it"
   (:var mv22078 :isa bio-utilize :agent mv22081 :object mv22079 :present "PRESENT" :raw-text
    "utilize")
   (:var mv22081 :isa pathway :plural t :has-determiner "WHICH" :modifier mv22075 :raw-text
    "pathways")
   (:var mv22075 :isa database :name "KEGG" :uid "KEGG")
   (:var mv22079 :isa pronoun/inanimate :word "it"))
  ("Which of them are regulated by elk1"
   (:var mv22089 :isa regulate :|affected-process-OR-object| mv22085 :agent mv22082 :present
    "PRESENT" :raw-text "regulated")
   (:var mv22085 :isa pronoun/plural :quantifier mv22083 :word "them") (:var mv22083 :isa which)
   (:var mv22082 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are expressed in liver"
   (:var mv22099 :isa gene-transcript-express :object mv22094 :organ mv22098 :present "PRESENT"
    :raw-text "expressed")
   (:var mv22094 :isa these :quantifier mv22092 :word "these") (:var mv22092 :isa which)
   (:var mv22098 :isa liver))
  ("Which of these are in immune pathways"
   (:var mv22112 :isa copular-predication-of-pp :item mv22104 :value mv22110 :prep mv22106
    :predicate mv22105)
   (:var mv22104 :isa these :quantifier mv22102 :word "these") (:var mv22102 :isa which)
   (:var mv22110 :isa pathway :plural t :modifier mv22107 :raw-text "pathways")
   (:var mv22107 :isa immune :name "immune") (:var mv22106 :isa in :word "in")
   (:var mv22105 :isa be :present "PRESENT"))
  ("what proteins does MEK phosphorylate?"
   (:var mv22119 :isa phosphorylate :substrate mv22120 :agent mv22118 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv22120 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv22118 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Which of these are kinases"
   (:var mv22124 :isa be :subject mv22123 :predicate mv22126 :present "PRESENT")
   (:var mv22123 :isa these :quantifier mv22121 :word "these") (:var mv22121 :isa which)
   (:var mv22126 :isa kinase :plural t :raw-text "kinases"))
  ("Which of those are regulated by elk1"
   (:var mv22135 :isa regulate :|affected-process-OR-object| mv22131 :agent mv22128 :present
    "PRESENT" :raw-text "regulated")
   (:var mv22131 :isa those :quantifier mv22129 :word "those") (:var mv22129 :isa which)
   (:var mv22128 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by elk1"
   (:var mv22145 :isa regulate :|affected-process-OR-object| mv22141 :agent mv22138 :present
    "PRESENT" :raw-text "regulated")
   (:var mv22141 :isa these :quantifier mv22139 :word "these") (:var mv22139 :isa which)
   (:var mv22138 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by fakeprotein"
   (:var mv22155 :isa regulate :|affected-process-OR-object| mv22150 :agent mv22154 :present
    "PRESENT" :raw-text "regulated")
   (:var mv22150 :isa these :quantifier mv22148 :word "these") (:var mv22148 :isa which)
   (:var mv22154 :isa bio-entity :name "fakeprotein"))
  ("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv22174 :isa share :object mv22173 :participant mv22175 :present "PRESENT" :raw-text
    "shared")
   (:var mv22173 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22175 :isa gene :plural t :expresses mv22172 :raw-text "genes")
   (:var mv22172 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv22158 mv22159 mv22168 mv22160 mv22161))
   (:var mv22158 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22159 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv22168 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv22160 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv22161 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by stat3, socs3, and creb5"
   (:var mv22189 :isa share :object mv22188 :participant mv22187 :present "PRESENT" :raw-text
    "shared")
   (:var mv22188 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22187 :isa collection :raw-text "stat3, socs3, and creb5" :type protein :number 3 :items
    (mv22177 mv22178 mv22179))
   (:var mv22177 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22178 :isa protein :raw-text "socs3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv22179 :isa protein :raw-text "creb5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv22208 :isa share :object mv22207 :participant mv22210 :present "PRESENT" :raw-text
    "shared")
   (:var mv22207 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22210 :isa gene :plural t :has-determiner "THE" :expresses mv22206 :raw-text "genes")
   (:var mv22206 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv22191 mv22192 mv22202 mv22193 mv22194))
   (:var mv22191 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22192 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv22202 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv22193 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv22194 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways involve TAP1 and JAK1?"
   (:var mv22217 :isa involve :theme mv22220 :object mv22219 :present "PRESENT")
   (:var mv22220 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22219 :isa collection :raw-text "TAP1 and JAK1" :type protein :number 2 :items
    (mv22212 mv22213))
   (:var mv22212 :isa protein :raw-text "TAP1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv22213 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("Which pathways involve calcium?"
   (:var mv22224 :isa involve :theme mv22226 :object mv22225 :present "PRESENT")
   (:var mv22226 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22225 :isa calcium :raw-text "calcium"))
  ("Which pathways use SRF?"
   (:var mv22231 :isa bio-use :agent mv22233 :object mv22232 :present "PRESENT" :raw-text "use")
   (:var mv22233 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22232 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways use these"
   (:var mv22238 :isa bio-use :agent mv22240 :object mv22239 :present "PRESENT" :raw-text "use")
   (:var mv22240 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22239 :isa these :word "these"))
  ("Which pathways utilize SRF?"
   (:var mv22244 :isa bio-utilize :agent mv22246 :object mv22245 :present "PRESENT" :raw-text
    "utilize")
   (:var mv22246 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22245 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways utilize these genes"
   (:var mv22250 :isa bio-utilize :agent mv22254 :object mv22255 :present "PRESENT" :raw-text
    "utilize")
   (:var mv22254 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22255 :isa gene :plural t :has-determiner "THESE" :raw-text "genes"))
  ("Which proteins are targeted by STAT3?"
   (:var mv22264 :isa target :object mv22263 :agent mv22256 :present "PRESENT" :raw-text
    "targeted")
   (:var mv22263 :isa protein :plural t :has-determiner "WHICH" :raw-text "proteins")
   (:var mv22256 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which reactome pathways utilize srf"
   (:var mv22270 :isa bio-utilize :agent mv22273 :object mv22271 :present "PRESENT" :raw-text
    "utilize")
   (:var mv22273 :isa pathway :plural t :has-determiner "WHICH" :modifier mv22267 :raw-text
    "pathways")
   (:var mv22267 :isa database :name "Reactome" :uid "Reactome")
   (:var mv22271 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which transcription factors are in the MAPK signaling pathway?"
   (:var mv22287 :isa copular-predication-of-pp :item mv22282 :value mv22286 :prep "IN" :predicate
    mv22278)
   (:var mv22282 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv22286 :isa transcription-factor :plural t :in-pathway mv22276 :has-determiner "WHICH"
    :raw-text "transcription factors")
   (:var mv22276 :isa signaling-pathway :has-determiner "THE" :modifier mv22281 :raw-text
    "signaling pathway")
   (:var mv22281 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv22278 :isa be :present "PRESENT"))
  ("Which transcription factors regulate frizzled8 in the liver?"
   (:var mv22293 :isa regulate :agent mv22297 :object mv22291 :present "PRESENT" :raw-text
    "regulate")
   (:var mv22297 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv22291 :isa protein :organ mv22296 :raw-text "frizzled8" :uid "UP:Q9H461" :name
    "FZD8_HUMAN")
   (:var mv22296 :isa liver :has-determiner "THE"))
  ("Which transcription factors regulate frizzled8?"
   (:var mv22303 :isa regulate :agent mv22304 :object mv22301 :present "PRESENT" :raw-text
    "regulate")
   (:var mv22304 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv22301 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Let's move AKT1 on top."
   (:var mv22312 :isa explicit-suggestion :suggestion mv22308 :marker let-as-directive)
   (:var mv22308 :isa move-to :|at-relative-location-OR-goal| mv22310 :theme mv22306 :present
    "PRESENT")
   (:var mv22310 :isa top-qua-location)
   (:var mv22306 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show the phosphorylated AKT1 on top."
   (:var mv22321 :isa explicit-suggestion :suggestion mv22315 :marker let-as-directive)
   (:var mv22315 :isa show :at-relative-location mv22319 :|statement-OR-theme| mv22314 :present
    "PRESENT")
   (:var mv22319 :isa top-qua-location)
   (:var mv22314 :isa protein :has-determiner "THE" :predication mv22317 :raw-text "AKT1" :uid
    "UP:P31749" :name "AKT1_HUMAN")
   (:var mv22317 :isa phosphorylate :substrate mv22314 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRAF?"
   (:var mv22324 :isa be :subject mv22323 :predicate mv22336 :present "PRESENT")
   (:var mv22323 :isa what)
   (:var mv22336 :isa upstream-segment :plural t :pathwaycomponent mv22332 :has-determiner "THE"
    :predication mv22326 :raw-text "upstreams")
   (:var mv22332 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv22322 mv22331))
   (:var mv22322 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv22331 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv22326 :isa common))
  ("Is stat3 expressed exclusively in liver?" (:var mv22344 :isa polar-question :statement mv22339)
   (:var mv22339 :isa gene-transcript-express :object mv22337 :organ mv22342 :past "PAST" :raw-text
    "expressed")
   (:var mv22337 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22342 :isa liver))
  ("Is stat3 expressed in spleen?" (:var mv22351 :isa polar-question :statement mv22347)
   (:var mv22347 :isa gene-transcript-express :object mv22345 :organ mv22349 :past "PAST" :raw-text
    "expressed")
   (:var mv22345 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22349 :isa spleen))
  ("Show phosphorylated akt1 on top."
   (:var mv22353 :isa show :at-relative-location mv22356 :|statement-OR-theme| mv22352 :present
    "PRESENT")
   (:var mv22356 :isa top-qua-location)
   (:var mv22352 :isa protein :predication mv22354 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv22354 :isa phosphorylate :substrate mv22352 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRA?"
   (:var mv22360 :isa be :subject mv22359 :predicate mv22372 :present "PRESENT")
   (:var mv22359 :isa what)
   (:var mv22372 :isa upstream-segment :plural t :pathwaycomponent mv22368 :has-determiner "THE"
    :predication mv22362 :raw-text "upstreams")
   (:var mv22368 :isa collection :raw-text "AKT1 and  BRA" :type protein :number 2 :items
    (mv22358 mv22367))
   (:var mv22358 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv22367 :isa bio-entity :name "BRA") (:var mv22362 :isa common))
  ("RAF activates MEK and MEK activates ERK."
   (:var mv22380 :isa collection :raw-text "RAF activates MEK and MEK activates ERK" :type
    bio-activate :number 2 :items (mv22374 mv22378))
   (:var mv22374 :isa bio-activate :agent mv22373 :object mv22375 :present "PRESENT" :raw-text
    "activates")
   (:var mv22373 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv22375 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv22378 :isa bio-activate :agent mv22377 :object mv22379 :present "PRESENT" :raw-text
    "activates")
   (:var mv22377 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv22379 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is the path from RAF to MEK?"
   (:var mv22382 :isa be :subject mv22381 :predicate mv22384 :present "PRESENT")
   (:var mv22381 :isa what)
   (:var mv22384 :isa path :end mv22388 :start mv22386 :has-determiner "THE")
   (:var mv22388 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv22386 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("remove the fact that mek activates erk"
   (:var mv22391 :isa remove :object mv22398 :present "PRESENT" :raw-text "remove")
   (:var mv22398 :isa fact :statement mv22396 :has-determiner "THE")
   (:var mv22396 :isa bio-activate :agent mv22395 :object mv22397 :present "PRESENT" :raw-text
    "activates")
   (:var mv22395 :isa protein-family :raw-text "mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv22397 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("let's show phosphorylated akt1 on top."
   (:var mv22406 :isa explicit-suggestion :suggestion mv22401 :marker let-as-directive)
   (:var mv22401 :isa show :at-relative-location mv22404 :|statement-OR-theme| mv22400 :present
    "PRESENT")
   (:var mv22404 :isa top-qua-location)
   (:var mv22400 :isa protein :predication mv22402 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv22402 :isa phosphorylate :substrate mv22400 :raw-text "phosphorylated"))
  ("what are positive regulators of the cfos gene?"
   (:var mv22410 :isa be :subject mv22409 :predicate mv22416 :present "PRESENT")
   (:var mv22409 :isa what)
   (:var mv22416 :isa positive-regulator :plural t :theme mv22414 :raw-text "positive regulators")
   (:var mv22414 :isa gene :has-determiner "THE" :expresses mv22413 :raw-text "gene")
   (:var mv22413 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what transcription factors regulate FOS in soft tissue?"
   (:var mv22421 :isa regulate :agent mv22424 :object mv22422 :present "PRESENT" :raw-text
    "regulate")
   (:var mv22424 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv22422 :isa protein :organ mv22419 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv22419 :isa bio-organ :name "soft tissue" :uid "NCIT:C12471"))
  ("Are there any drugs inhibiting MEK?" (:var mv22437 :isa polar-question :statement mv22434)
   (:var mv22434 :isa there-exists :value mv22436 :predicate mv22427)
   (:var mv22436 :isa drug :plural t :predication mv22432 :quantifier mv22429 :raw-text "drugs")
   (:var mv22432 :isa inhibit :agent mv22436 :object mv22433 :progressive "PROGRESSIVE" :raw-text
    "inhibiting")
   (:var mv22433 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv22429 :isa any :word "any") (:var mv22427 :isa syntactic-there))
  ("Are there any drugs targeting KRAS?" (:var mv22449 :isa polar-question :statement mv22446)
   (:var mv22446 :isa there-exists :value mv22448 :predicate mv22439)
   (:var mv22448 :isa drug :plural t :predication mv22444 :quantifier mv22441 :raw-text "drugs")
   (:var mv22444 :isa target :agent mv22448 :object mv22445 :progressive "PROGRESSIVE" :raw-text
    "targeting")
   (:var mv22445 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv22441 :isa any :word "any") (:var mv22439 :isa syntactic-there))
  ("Are there any genes in the liver that are regulated by stat3?"
   (:var mv22471 :isa polar-question :statement mv22464)
   (:var mv22464 :isa there-exists :value mv22470 :predicate mv22452)
   (:var mv22470 :isa gene :plural t :predication mv22466 :organ mv22459 :quantifier mv22454
    :raw-text "genes")
   (:var mv22466 :isa regulate :object mv22470 :that-rel t :agent mv22450 :present "PRESENT"
    :raw-text "regulated")
   (:var mv22450 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22459 :isa liver :has-determiner "THE") (:var mv22454 :isa any :word "any")
   (:var mv22452 :isa syntactic-there))
  ("Are there any genes involved in apoptosis that are regulated by stat3?"
   (:var mv22492 :isa polar-question :statement mv22486)
   (:var mv22486 :isa there-exists :value mv22491 :predicate mv22474)
   (:var mv22491 :isa gene :plural t :predication mv22479 :quantifier mv22476 :raw-text "genes")
   (:var mv22479 :isa involve :object mv22491 :theme mv22481 :past "PAST")
   (:var mv22481 :isa apoptosis :predication mv22488 :raw-text "apoptosis")
   (:var mv22488 :isa regulate :affected-process mv22481 :that-rel t :agent mv22472 :present
    "PRESENT" :raw-text "regulated")
   (:var mv22472 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22476 :isa any :word "any") (:var mv22474 :isa syntactic-there))
  ("Are there any genes stat3 is upstream of?" (:var mv22504 :isa there-exists :predicate mv22495)
   (:var mv22495 :isa syntactic-there))
  ("Are there any inhibitors for JAK1?" (:var mv22517 :isa polar-question :statement mv22513)
   (:var mv22513 :isa there-exists :value mv22516 :predicate mv22507)
   (:var mv22516 :isa inhibitor :plural t :|target-OR-protein| mv22505 :quantifier mv22509
    :raw-text "inhibitors")
   (:var mv22505 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv22509 :isa any :word "any") (:var mv22507 :isa syntactic-there))
  ("Are there genes regulated by elk1 and srf"
   (:var mv22532 :isa polar-question :statement mv22528)
   (:var mv22528 :isa there-exists :value mv22531 :predicate mv22520)
   (:var mv22531 :isa gene :plural t :predication mv22524 :raw-text "genes")
   (:var mv22524 :isa regulate :object mv22531 :agent mv22529 :past "PAST" :raw-text "regulated")
   (:var mv22529 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv22518 mv22527))
   (:var mv22518 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22527 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv22520 :isa syntactic-there))
  ("Can you find any apoptotic pathways stat3 is involved in?"
   (:var mv22547 :isa polar-question :statement mv22537)
   (:var mv22537 :isa bio-find :agent mv22535 :object mv22533 :modal "CAN" :raw-text "find")
   (:var mv22535 :isa interlocutor :name "hearer")
   (:var mv22533 :isa protein :quantifier mv22538 :cellular-process mv22539 :context mv22542
    :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22538 :isa any :word "any") (:var mv22539 :isa apoptosis :raw-text "apoptotic")
   (:var mv22542 :isa pathway :plural t :raw-text "pathways"))
  ("Can you find any apoptotic pathways that stat3 is involved in?" (:var mv22549 :isa can))
  ("Can you look up which genes targeted by stat3 are involved in apoptosis?"
   (:var mv22587 :isa polar-question :statement mv22586) (:var mv22586 :isa look-up :actor mv22568)
   (:var mv22568 :isa interlocutor :name "hearer"))
  ("Can you show me genes regulated by ELK1" (:var mv22599 :isa polar-question :statement mv22591)
   (:var mv22591 :isa show :agent mv22590 :|statement-OR-theme| mv22598 :beneficiary mv22592 :modal
    "CAN")
   (:var mv22590 :isa interlocutor :name "hearer")
   (:var mv22598 :isa gene :plural t :predication mv22595 :raw-text "genes")
   (:var mv22595 :isa regulate :object mv22598 :agent mv22588 :past "PAST" :raw-text "regulated")
   (:var mv22588 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22592 :isa interlocutor :name "speaker"))
  ("Can you show me genes that are regulated by ELK1"
   (:var mv22614 :isa polar-question :statement mv22603)
   (:var mv22603 :isa show :agent mv22602 :|statement-OR-theme| mv22613 :beneficiary mv22604 :modal
    "CAN")
   (:var mv22602 :isa interlocutor :name "hearer")
   (:var mv22613 :isa gene :plural t :predication mv22611 :raw-text "genes")
   (:var mv22611 :isa regulate :object mv22613 :that-rel t :agent mv22600 :modal "CAN" :raw-text
    "regulated")
   (:var mv22600 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22604 :isa interlocutor :name "speaker"))
  ("Can you show me the pahtways that involve SRF"
   (:var mv22624 :isa polar-question :statement mv22617)
   (:var mv22617 :isa show :agent mv22616 :|statement-OR-theme| mv22620 :beneficiary mv22618 :modal
    "CAN")
   (:var mv22616 :isa interlocutor :name "hearer")
   (:var mv22620 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv22618 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes regulated by STAT3"
   (:var mv22638 :isa polar-question :statement mv22628)
   (:var mv22628 :isa tell :agent mv22627 :theme mv22637 :beneficiary mv22629 :modal "CAN")
   (:var mv22627 :isa interlocutor :name "hearer")
   (:var mv22637 :isa gene :plural t :predication mv22633 :has-determiner "THE" :raw-text "genes")
   (:var mv22633 :isa regulate :object mv22637 :agent mv22625 :past "PAST" :raw-text "regulated")
   (:var mv22625 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22629 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that STAT3 regulates"
   (:var mv22651 :isa polar-question :statement mv22642)
   (:var mv22642 :isa tell :agent mv22641 :theme mv22650 :beneficiary mv22643 :modal "CAN")
   (:var mv22641 :isa interlocutor :name "hearer")
   (:var mv22650 :isa gene :plural t :predication mv22648 :has-determiner "THE" :raw-text "genes")
   (:var mv22648 :isa regulate :object mv22650 :that-rel t :agent mv22639 :present "PRESENT"
    :raw-text "regulates")
   (:var mv22639 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22643 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that are regulated by STAT3"
   (:var mv22668 :isa polar-question :statement mv22655)
   (:var mv22655 :isa tell :agent mv22654 :theme mv22667 :beneficiary mv22656 :modal "CAN")
   (:var mv22654 :isa interlocutor :name "hearer")
   (:var mv22667 :isa gene :plural t :predication mv22665 :has-determiner "THE" :raw-text "genes")
   (:var mv22665 :isa regulate :object mv22667 :that-rel t :agent mv22652 :modal "CAN" :raw-text
    "regulated")
   (:var mv22652 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22656 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes which are regulated by STAT3"
   (:var mv22686 :isa polar-question :statement mv22672)
   (:var mv22672 :isa tell :agent mv22671 :theme mv22685 :beneficiary mv22673 :modal "CAN")
   (:var mv22671 :isa interlocutor :name "hearer")
   (:var mv22685 :isa gene :plural t :predication mv22684 :has-determiner "THE" :raw-text "genes")
   (:var mv22684 :isa regulate :object mv22685 :agent mv22669 :modal mv22670 :raw-text "regulated")
   (:var mv22669 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22670 :isa can) (:var mv22673 :isa interlocutor :name "speaker"))
  ("Can you tell me what transcription factors are shared by elk1 and srf"
   (:var mv22704 :isa polar-question :statement mv22692)
   (:var mv22692 :isa tell :agent mv22691 :theme mv22702 :beneficiary mv22693 :modal "CAN")
   (:var mv22691 :isa interlocutor :name "hearer")
   (:var mv22702 :isa share :object mv22701 :participant mv22700 :modal "CAN" :raw-text "shared")
   (:var mv22701 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv22700 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv22689 mv22699))
   (:var mv22689 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22699 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv22693 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes are regulated by STAT3"
   (:var mv22719 :isa polar-question :statement mv22708)
   (:var mv22708 :isa tell :agent mv22707 :theme mv22717 :beneficiary mv22709 :modal "CAN")
   (:var mv22707 :isa interlocutor :name "hearer")
   (:var mv22717 :isa regulate :object mv22716 :agent mv22705 :modal "CAN" :raw-text "regulated")
   (:var mv22716 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv22705 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22709 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes in the liver are regulated by stat3?"
   (:var mv22739 :isa polar-question :statement mv22723)
   (:var mv22723 :isa tell :agent mv22722 :theme mv22735 :beneficiary mv22724 :modal "CAN")
   (:var mv22722 :isa interlocutor :name "hearer")
   (:var mv22735 :isa regulate :object mv22738 :agent mv22720 :modal "CAN" :raw-text "regulated")
   (:var mv22738 :isa gene :plural t :organ mv22730 :has-determiner "WHICH" :raw-text "genes")
   (:var mv22730 :isa liver :has-determiner "THE")
   (:var mv22720 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22724 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes stat3 regulates?"
   (:var mv22751 :isa polar-question :statement mv22743)
   (:var mv22743 :isa tell :agent mv22742 :theme mv22750 :beneficiary mv22744 :modal "CAN")
   (:var mv22742 :isa interlocutor :name "hearer")
   (:var mv22750 :isa gene :plural t :predication mv22748 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv22748 :isa regulate :object mv22750 :agent mv22740 :present "PRESENT" :raw-text
    "regulates")
   (:var mv22740 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22744 :isa interlocutor :name "speaker"))
  ("Does STAT3 affect the expression of c-fos?"
   (:var mv22761 :isa polar-question :statement mv22759)
   (:var mv22759 :isa affect :agent mv22752 :affected-process mv22757 :raw-text "affect")
   (:var mv22752 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22757 :isa gene-transcript-express :object mv22753 :has-determiner "THE" :raw-text
    "expression")
   (:var mv22753 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 affect the expression of the c-fos gene?"
   (:var mv22773 :isa polar-question :statement mv22771)
   (:var mv22771 :isa affect :agent mv22762 :affected-process mv22767 :raw-text "affect")
   (:var mv22762 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22767 :isa gene-transcript-express :object mv22770 :has-determiner "THE" :raw-text
    "expression")
   (:var mv22770 :isa gene :has-determiner "THE" :expresses mv22763 :raw-text "gene")
   (:var mv22763 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase the expression of the c-fos gene?"
   (:var mv22786 :isa polar-question :statement mv22784)
   (:var mv22784 :isa increase :agent mv22774 :affected-process mv22780 :raw-text "increase")
   (:var mv22774 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22780 :isa gene-transcript-express :object mv22783 :has-determiner "THE" :raw-text
    "expression")
   (:var mv22783 :isa gene :has-determiner "THE" :expresses mv22775 :raw-text "gene")
   (:var mv22775 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase transcription of the c-fos gene?"
   (:var mv22798 :isa polar-question :statement mv22796)
   (:var mv22796 :isa increase :agent mv22787 :affected-process mv22792 :raw-text "increase")
   (:var mv22787 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22792 :isa transcribe :object mv22795 :raw-text "transcription")
   (:var mv22795 :isa gene :has-determiner "THE" :expresses mv22788 :raw-text "gene")
   (:var mv22788 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 affect the expression of cfos?"
   (:var mv22808 :isa polar-question :statement mv22806)
   (:var mv22806 :isa affect :agent mv22799 :affected-process mv22803 :raw-text "affect")
   (:var mv22799 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22803 :isa gene-transcript-express :object mv22805 :has-determiner "THE" :raw-text
    "expression")
   (:var mv22805 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the mTor pathway contain SGK1?" (:var mv22818 :isa polar-question :statement mv22817)
   (:var mv22817 :isa contain :theme mv22815 :patient mv22809)
   (:var mv22815 :isa pathway :has-determiner "THE" :modifier mv22812 :raw-text "pathway")
   (:var mv22812 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv22809 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Find a treatment for pancreatic cancer."
   (:var mv22821 :isa bio-find :object mv22823 :present "PRESENT" :raw-text "Find")
   (:var mv22823 :isa treatment :disease mv22819 :has-determiner "A" :raw-text "treatment")
   (:var mv22819 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("Find genes in the liver regulated by stat3"
   (:var mv22828 :isa bio-find :object mv22838 :present "PRESENT" :raw-text "Find")
   (:var mv22838 :isa gene :plural t :predication mv22834 :organ mv22833 :raw-text "genes")
   (:var mv22834 :isa regulate :object mv22838 :agent mv22826 :past "PAST" :raw-text "regulated")
   (:var mv22826 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22833 :isa liver :has-determiner "THE"))
  ("Find genes that stat3 regulates"
   (:var mv22842 :isa bio-find :object mv22847 :present "PRESENT" :raw-text "Find")
   (:var mv22847 :isa gene :plural t :predication mv22846 :raw-text "genes")
   (:var mv22846 :isa regulate :object mv22847 :that-rel t :agent mv22840 :present "PRESENT"
    :raw-text "regulates")
   (:var mv22840 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Find transcription factors shared by elk1 and srf"
   (:var mv22852 :isa bio-find :object mv22849 :present "PRESENT" :raw-text "Find")
   (:var mv22849 :isa transcription-factor :plural t :predication mv22853 :raw-text
    "transcription factors")
   (:var mv22853 :isa share :object mv22849 :participant mv22857 :past "PAST" :raw-text "shared")
   (:var mv22857 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv22850 mv22856))
   (:var mv22850 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22856 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("How does KRAS activate MAPK3?"
   (:var mv22864 :isa bio-activate :manner mv22861 :agent mv22863 :object mv22860 :present
    "PRESENT" :raw-text "activate")
   (:var mv22861 :isa how)
   (:var mv22863 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv22860 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does STAT3 regulate the c-fos gene?"
   (:var mv22869 :isa regulate :manner mv22867 :agent mv22865 :object mv22871 :present "PRESENT"
    :raw-text "regulate")
   (:var mv22867 :isa how)
   (:var mv22865 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22871 :isa gene :has-determiner "THE" :expresses mv22866 :raw-text "gene")
   (:var mv22866 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("How does knocking out p53 cause cancer via its effect on miRNAs?"
   (:var mv22887 :isa knock-out :raw-text "knocking out" :|agent-OR-cause| mv22873 :object mv22891)
   (:var mv22873 :isa how) (:var mv22891 :isa cancer :modifier mv22877 :modifier mv22877)
   (:var mv22877 :isa cause :by-means-of mv22889 :raw-text "cause")
   (:var mv22889 :isa effect :object mv22886 :participant mv22881 :raw-text "effect")
   (:var mv22886 :isa micro-rna :plural t :raw-text "miRNAs")
   (:var mv22881 :isa pronoun/inanimate :word "its"))
  ("How does stat3 regulate apoptosis in the liver?"
   (:var mv22895 :isa regulate :manner mv22893 :agent mv22892 :affected-process mv22896 :present
    "PRESENT" :raw-text "regulate")
   (:var mv22893 :isa how)
   (:var mv22892 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22896 :isa apoptosis :organ mv22899 :raw-text "apoptosis")
   (:var mv22899 :isa liver :has-determiner "THE"))
  ("How does stat3 regulate apoptosis?"
   (:var mv22904 :isa regulate :manner mv22902 :agent mv22901 :affected-process mv22905 :present
    "PRESENT" :raw-text "regulate")
   (:var mv22902 :isa how)
   (:var mv22901 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22905 :isa apoptosis :raw-text "apoptosis"))
  ("How does stat3 regulate apoptotic genes?"
   (:var mv22909 :isa regulate :manner mv22907 :agent mv22906 :object mv22914 :present "PRESENT"
    :raw-text "regulate")
   (:var mv22907 :isa how)
   (:var mv22906 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22914 :isa gene :plural t :cellular-process mv22910 :raw-text "genes")
   (:var mv22910 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotic regulation?"
   (:var mv22924 :isa wh-question :statement mv22917 :wh how)
   (:var mv22917 :isa be :predicate mv22915 :present "PRESENT")
   (:var mv22915 :isa protein :predication mv22918 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv22918 :isa involve :object mv22915 :theme mv22922 :past "PAST")
   (:var mv22922 :isa regulate :cellular-process mv22920 :raw-text "regulation")
   (:var mv22920 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotis regulation in the liver?"
   (:var mv22937 :isa wh-question :statement mv22927 :wh how)
   (:var mv22927 :isa be :predicate mv22925 :present "PRESENT")
   (:var mv22925 :isa protein :predication mv22928 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv22928 :isa involve :object mv22925 :theme mv22930 :past "PAST")
   (:var mv22930 :isa regulate :organ mv22933 :|agent-OR-object| mv22934 :raw-text "regulation")
   (:var mv22933 :isa liver :has-determiner "THE")
   (:var mv22934 :isa bio-entity :name "apoptotis"))
  ("How is stat3 involved in regulating apoptosis?"
   (:var mv22946 :isa wh-question :statement mv22940 :wh how)
   (:var mv22940 :isa be :predicate mv22938 :present "PRESENT")
   (:var mv22938 :isa protein :predication mv22941 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv22941 :isa involve :object mv22938 :theme mv22943 :past "PAST")
   (:var mv22943 :isa regulate :affected-process mv22944 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv22944 :isa apoptosis :raw-text "apoptosis"))
  ("How is stat3 used to regulate apoptosis?"
   (:var mv22955 :isa wh-question :statement mv22949 :wh how)
   (:var mv22949 :isa be :predicate mv22947 :present "PRESENT")
   (:var mv22947 :isa protein :predication mv22950 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv22950 :isa bio-use :object mv22947 :theme mv22954 :past "PAST" :raw-text "used")
   (:var mv22954 :isa regulate :affected-process mv22953 :raw-text "regulate")
   (:var mv22953 :isa apoptosis :raw-text "apoptosis"))
  ("How many genes are in the MAPK signaling pathway?"
   (:var mv22969 :isa copular-predication-of-pp :item mv22964 :value mv22968 :prep "IN" :predicate
    mv22960)
   (:var mv22964 :isa gene :plural t :quantifier how-many :raw-text "genes")
   (:var mv22968 :isa gene :plural t :context mv22957 :quantifier how-many :raw-text "genes")
   (:var mv22957 :isa signaling-pathway :has-determiner "THE" :modifier mv22963 :raw-text
    "signaling pathway")
   (:var mv22963 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv22960 :isa be :present "PRESENT"))
  ("How might a STAT3 mutation affect breast cancer?"
   (:var mv22978 :isa affect :manner mv22973 :modal mv22974 :agent mv22976 :object mv22972 :present
    "PRESENT" :raw-text "affect")
   (:var mv22973 :isa how) (:var mv22974 :isa might)
   (:var mv22976 :isa mutation :has-determiner "A" :object mv22971 :raw-text "mutation")
   (:var mv22971 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22972 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Is STAT3 a regulator for c-fos?" (:var mv22986 :isa polar-question :statement mv22981)
   (:var mv22981 :isa be :subject mv22979 :predicate mv22983)
   (:var mv22979 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22983 :isa regulator :theme mv22980 :has-determiner "A" :raw-text "regulator")
   (:var mv22980 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of c-fos" (:var mv22994 :isa polar-question :statement mv22989)
   (:var mv22989 :isa be :subject mv22987 :predicate mv22991)
   (:var mv22987 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22991 :isa regulator :theme mv22988 :has-determiner "A" :raw-text "regulator")
   (:var mv22988 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene" (:var mv23004 :isa polar-question :statement mv22997)
   (:var mv22997 :isa be :subject mv22995 :predicate mv22999)
   (:var mv22995 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22999 :isa regulator :theme mv23002 :has-determiner "A" :raw-text "regulator")
   (:var mv23002 :isa gene :has-determiner "THE" :expresses mv22996 :raw-text "gene")
   (:var mv22996 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene?" (:var mv23014 :isa polar-question :statement mv23007)
   (:var mv23007 :isa be :subject mv23005 :predicate mv23009)
   (:var mv23005 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23009 :isa regulator :theme mv23012 :has-determiner "A" :raw-text "regulator")
   (:var mv23012 :isa gene :has-determiner "THE" :expresses mv23006 :raw-text "gene")
   (:var mv23006 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos gene"
   (:var mv23023 :isa polar-question :statement mv23018)
   (:var mv23018 :isa be :subject mv23015 :predicate mv23016)
   (:var mv23015 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23016 :isa transcription-factor :controlled-gene mv23021 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv23021 :isa gene :expresses mv23017 :raw-text "gene")
   (:var mv23017 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos"
   (:var mv23031 :isa polar-question :statement mv23027)
   (:var mv23027 :isa be :subject mv23024 :predicate mv23025)
   (:var mv23024 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23025 :isa transcription-factor :controlled-gene mv23026 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv23026 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos?"
   (:var mv23039 :isa polar-question :statement mv23035)
   (:var mv23035 :isa be :subject mv23032 :predicate mv23033)
   (:var mv23032 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23033 :isa transcription-factor :controlled-gene mv23034 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv23034 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for the c-fos gene?"
   (:var mv23049 :isa polar-question :statement mv23043)
   (:var mv23043 :isa be :subject mv23040 :predicate mv23041)
   (:var mv23040 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23041 :isa transcription-factor :controlled-gene mv23047 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv23047 :isa gene :has-determiner "THE" :expresses mv23042 :raw-text "gene")
   (:var mv23042 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 regulated by c-fos?" (:var mv23056 :isa polar-question :statement mv23053)
   (:var mv23053 :isa regulate :object mv23050 :agent mv23051 :past "PAST" :raw-text "regulated")
   (:var mv23050 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23051 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Stat3 a transcription factor for the c-fos gene"
   (:var mv23066 :isa polar-question :statement mv23060)
   (:var mv23060 :isa be :subject mv23057 :predicate mv23058)
   (:var mv23057 :isa protein :raw-text "Stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23058 :isa transcription-factor :controlled-gene mv23064 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv23064 :isa gene :has-determiner "THE" :expresses mv23059 :raw-text "gene")
   (:var mv23059 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List genes regulated by ELK1" (:var mv23068 :isa list :theme mv23070 :present "PRESENT")
   (:var mv23070 :isa gene :plural t :predication mv23071 :raw-text "genes")
   (:var mv23071 :isa regulate :object mv23070 :agent mv23067 :past "PAST" :raw-text "regulated")
   (:var mv23067 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List genes that are regulated by ELK1"
   (:var mv23076 :isa list :theme mv23085 :present "PRESENT")
   (:var mv23085 :isa gene :plural t :predication mv23083 :raw-text "genes")
   (:var mv23083 :isa regulate :object mv23085 :that-rel t :agent mv23075 :present "PRESENT"
    :raw-text "regulated")
   (:var mv23075 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List some genes that stat3 regulates"
   (:var mv23087 :isa list :theme mv23094 :present "PRESENT")
   (:var mv23094 :isa gene :plural t :predication mv23092 :quantifier mv23088 :raw-text "genes")
   (:var mv23092 :isa regulate :object mv23094 :that-rel t :agent mv23086 :present "PRESENT"
    :raw-text "regulates")
   (:var mv23086 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23088 :isa some :word "some"))
  ("List the genes STAT3 regulates" (:var mv23096 :isa list :theme mv23102 :present "PRESENT")
   (:var mv23102 :isa gene :plural t :predication mv23100 :has-determiner "THE" :raw-text "genes")
   (:var mv23100 :isa regulate :object mv23102 :agent mv23095 :present "PRESENT" :raw-text
    "regulates")
   (:var mv23095 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes that are regulated by STAT3"
   (:var mv23104 :isa list :theme mv23115 :present "PRESENT")
   (:var mv23115 :isa gene :plural t :predication mv23113 :has-determiner "THE" :raw-text "genes")
   (:var mv23113 :isa regulate :object mv23115 :that-rel t :agent mv23103 :present "PRESENT"
    :raw-text "regulated")
   (:var mv23103 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes which STAT3 regulates"
   (:var mv23117 :isa list :theme mv23124 :present "PRESENT")
   (:var mv23124 :isa gene :plural t :predication mv23122 :has-determiner "THE" :raw-text "genes")
   (:var mv23122 :isa regulate :object mv23124 :agent mv23116 :present "PRESENT" :raw-text
    "regulates")
   (:var mv23116 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("List the pahtways that involve SRF" (:var mv23125 :isa list :theme mv23127 :present "PRESENT")
   (:var mv23127 :isa bio-entity :has-determiner "THE" :name "pahtways"))
  ("Show me genes regulated by ELK1"
   (:var mv23132 :isa show :|statement-OR-theme| mv23139 :beneficiary mv23133 :present "PRESENT")
   (:var mv23139 :isa gene :plural t :predication mv23136 :raw-text "genes")
   (:var mv23136 :isa regulate :object mv23139 :agent mv23131 :past "PAST" :raw-text "regulated")
   (:var mv23131 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23133 :isa interlocutor :name "speaker"))
  ("Show me genes that are regulated by ELK1"
   (:var mv23141 :isa show :|statement-OR-theme| mv23151 :beneficiary mv23142 :present "PRESENT")
   (:var mv23151 :isa gene :plural t :predication mv23149 :raw-text "genes")
   (:var mv23149 :isa regulate :object mv23151 :that-rel t :agent mv23140 :present "PRESENT"
    :raw-text "regulated")
   (:var mv23140 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23142 :isa interlocutor :name "speaker"))
  ("Show me genes that stat3 regulates"
   (:var mv23153 :isa show :|statement-OR-theme| mv23159 :beneficiary mv23154 :present "PRESENT")
   (:var mv23159 :isa gene :plural t :predication mv23158 :raw-text "genes")
   (:var mv23158 :isa regulate :object mv23159 :that-rel t :agent mv23152 :present "PRESENT"
    :raw-text "regulates")
   (:var mv23152 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23154 :isa interlocutor :name "speaker"))
  ("Show me the pahtways that involve SRF"
   (:var mv23160 :isa show :|statement-OR-theme| mv23163 :beneficiary mv23161 :present "PRESENT")
   (:var mv23163 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv23161 :isa interlocutor :name "speaker"))
  ("Show me what transcription factors are shared by elk1 and srf"
   (:var mv23182 :isa show :statement mv23180 :beneficiary mv23171 :present "PRESENT")
   (:var mv23180 :isa share :object mv23179 :participant mv23178 :present "PRESENT" :raw-text
    "shared")
   (:var mv23179 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv23178 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv23169 mv23177))
   (:var mv23169 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23177 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv23171 :isa interlocutor :name "speaker"))
  ("Show me which genes are regulated by STAT3"
   (:var mv23195 :isa show :statement mv23193 :beneficiary mv23185 :present "PRESENT")
   (:var mv23193 :isa regulate :object mv23192 :agent mv23183 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23192 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv23183 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23185 :isa interlocutor :name "speaker"))
  ("Show the genes which STAT3 regulates"
   (:var mv23197 :isa show :|statement-OR-theme| mv23204 :present "PRESENT")
   (:var mv23204 :isa gene :plural t :predication mv23202 :has-determiner "THE" :raw-text "genes")
   (:var mv23202 :isa regulate :object mv23204 :agent mv23196 :present "PRESENT" :raw-text
    "regulates")
   (:var mv23196 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("Show the pahtways that involve SRF"
   (:var mv23205 :isa show :|statement-OR-theme| mv23207 :present "PRESENT")
   (:var mv23207 :isa bio-entity :has-determiner "THE" :name "pahtways"))
  ("Show transcription factors that are shared by elk1 and srf"
   (:var mv23214 :isa show :|statement-OR-theme| mv23224 :present "PRESENT")
   (:var mv23224 :isa transcription-factor :plural t :predication mv23222 :raw-text
    "transcription factors")
   (:var mv23222 :isa share :object mv23224 :that-rel t :participant mv23221 :present "PRESENT"
    :raw-text "shared")
   (:var mv23221 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv23213 mv23220))
   (:var mv23213 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23220 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me the genes which are regulated by STAT3"
   (:var mv23226 :isa tell :theme mv23239 :beneficiary mv23227 :present "PRESENT")
   (:var mv23239 :isa gene :plural t :predication mv23238 :has-determiner "THE" :raw-text "genes")
   (:var mv23238 :isa regulate :object mv23239 :agent mv23225 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23225 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23227 :isa interlocutor :name "speaker"))
  ("Tell me what genes are regulated by elk1 and srf"
   (:var mv23241 :isa tell :theme mv23253 :beneficiary mv23242 :present "PRESENT")
   (:var mv23253 :isa regulate :object mv23252 :agent mv23251 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23252 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv23251 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv23240 mv23250))
   (:var mv23240 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23250 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv23242 :isa interlocutor :name "speaker"))
  ("Tell me which genes are regulated by STAT3"
   (:var mv23256 :isa tell :theme mv23265 :beneficiary mv23257 :present "PRESENT")
   (:var mv23265 :isa regulate :object mv23264 :agent mv23255 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23264 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv23255 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23257 :isa interlocutor :name "speaker"))
  ("What are positive regulators of cfos?"
   (:var mv23270 :isa be :subject mv23269 :predicate mv23274 :present "PRESENT")
   (:var mv23269 :isa what)
   (:var mv23274 :isa positive-regulator :plural t :theme mv23272 :raw-text "positive regulators")
   (:var mv23272 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are some regulators of SMURF2?"
   (:var mv23277 :isa be :subject mv23276 :predicate mv23284 :present "PRESENT")
   (:var mv23276 :isa what)
   (:var mv23284 :isa regulator :plural t :theme mv23275 :quantifier mv23278 :raw-text
    "regulators")
   (:var mv23275 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv23278 :isa some :word "some"))
  ("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
   (:var mv23291 :isa be :subject mv23290 :predicate mv23303 :present "PRESENT")
   (:var mv23290 :isa what)
   (:var mv23303 :isa regulator :plural t :theme mv23299 :has-determiner "THE" :predication mv23293
    :raw-text "regulators")
   (:var mv23299 :isa collection :raw-text "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :type
    protein :number 6 :items (mv23285 mv23286 mv23297 mv23287 mv23288 mv23289))
   (:var mv23285 :isa protein :raw-text "ABI2" :uid "UP:Q9NYB9" :name "ABI2_HUMAN")
   (:var mv23286 :isa protein :raw-text "ABL1" :uid "UP:P00519" :name "ABL1_HUMAN")
   (:var mv23297 :isa protein :raw-text "ACADSB" :uid "UP:P45954" :name "ACDSB_HUMAN")
   (:var mv23287 :isa protein :raw-text "ADGRL1" :uid "UP:O94910" :name "AGRL1_HUMAN")
   (:var mv23288 :isa protein :raw-text "ADRM1" :uid "UP:Q16186" :name "ADRM1_HUMAN")
   (:var mv23289 :isa protein :raw-text "AGAP1" :uid "UP:Q9UPQ3" :name "AGAP1_HUMAN")
   (:var mv23293 :isa common))
  ("What are the common regulators of elk1 and srf"
   (:var mv23306 :isa be :subject mv23305 :predicate mv23318 :present "PRESENT")
   (:var mv23305 :isa what)
   (:var mv23318 :isa regulator :plural t :theme mv23314 :has-determiner "THE" :predication mv23308
    :raw-text "regulators")
   (:var mv23314 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv23304 mv23313))
   (:var mv23304 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23313 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv23308 :isa common))
  ("What are the common regulators of elk1 and srg"
   (:var mv23321 :isa be :subject mv23320 :predicate mv23333 :present "PRESENT")
   (:var mv23320 :isa what)
   (:var mv23333 :isa regulator :plural t :theme mv23329 :has-determiner "THE" :predication mv23323
    :raw-text "regulators")
   (:var mv23329 :isa collection :raw-text "elk1 and srg" :type protein :number 2 :items
    (mv23319 mv23328))
   (:var mv23319 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23328 :isa bio-entity :name "srg") (:var mv23323 :isa common))
  ("What are the common regulators of those genes"
   (:var mv23335 :isa be :subject mv23334 :predicate mv23348 :present "PRESENT")
   (:var mv23334 :isa what)
   (:var mv23348 :isa regulator :plural t :theme mv23346 :has-determiner "THE" :predication mv23337
    :raw-text "regulators")
   (:var mv23346 :isa gene :plural t :has-determiner "THOSE" :raw-text "genes")
   (:var mv23337 :isa common))
  ("What are the genes regulated by STAT3?"
   (:var mv23351 :isa be :subject mv23350 :predicate mv23359 :present "PRESENT")
   (:var mv23350 :isa what)
   (:var mv23359 :isa gene :plural t :predication mv23355 :has-determiner "THE" :raw-text "genes")
   (:var mv23355 :isa regulate :object mv23359 :agent mv23349 :past "PAST" :raw-text "regulated")
   (:var mv23349 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the genes which STAT3 regulates?"
   (:var mv23362 :isa be :subject mv23361 :predicate mv23369 :present "PRESENT")
   (:var mv23361 :isa what)
   (:var mv23369 :isa gene :plural t :predication mv23367 :has-determiner "THE" :raw-text "genes")
   (:var mv23367 :isa regulate :object mv23369 :agent mv23360 :present "PRESENT" :raw-text
    "regulates")
   (:var mv23360 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv23374 :isa be :subject mv23373 :predicate mv23388 :present "PRESENT")
   (:var mv23373 :isa what)
   (:var mv23388 :isa regulator :plural t :theme mv23384 :has-determiner "THE" :modifier mv23377
    :raw-text "regulators")
   (:var mv23384 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv23381 mv23382 mv23370 mv23371 mv23372))
   (:var mv23381 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv23382 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv23370 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23371 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv23372 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv23377 :isa frequent :comparative mv23376 :name "frequent")
   (:var mv23376 :isa superlative-quantifier :name "most"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv23395 :isa be :subject mv23394 :predicate mv23404 :present "PRESENT")
   (:var mv23394 :isa what)
   (:var mv23404 :isa transcription-factor :plural t :predication mv23398 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv23398 :isa regulate :agent mv23404 :that-rel t :object mv23402 :present "PRESENT"
    :raw-text "regulate")
   (:var mv23402 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number
    5 :items (mv23399 mv23400 mv23391 mv23392 mv23393))
   (:var mv23399 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv23400 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv23391 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23392 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv23393 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What other genes are in the first pathway?"
   (:var mv23420 :isa copular-predication-of-pp :item mv23415 :value mv23419 :prep "IN" :predicate
    mv23409)
   (:var mv23415 :isa gene :plural t :has-determiner "WHAT" :modifier mv23406 :raw-text "genes")
   (:var mv23406 :isa other :name "other")
   (:var mv23419 :isa gene :plural t :context mv23413 :has-determiner "WHAT" :modifier mv23406
    :raw-text "genes")
   (:var mv23413 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv23409 :isa be :present "PRESENT"))
  ("What other proteins are in the first pathway?"
   (:var mv23437 :isa copular-predication-of-pp :item mv23432 :value mv23436 :prep "IN" :predicate
    mv23426)
   (:var mv23432 :isa protein :plural t :has-determiner "WHAT" :modifier mv23423 :raw-text
    "proteins")
   (:var mv23423 :isa other :name "other")
   (:var mv23436 :isa protein :plural t :in-pathway mv23430 :has-determiner "WHAT" :modifier
    mv23423 :raw-text "proteins")
   (:var mv23430 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv23426 :isa be :present "PRESENT"))
  ("What pathways are they in?"
   (:var mv23442 :isa be :subject mv23445 :predicate mv23443 :present "PRESENT")
   (:var mv23445 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv23443 :isa pronoun/plural :word "they"))
  ("What pathways involve SOARING?"
   (:var mv23449 :isa involve :theme mv23451 :object mv23450 :present "PRESENT")
   (:var mv23451 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv23450 :isa soar :progressive "PROGRESSIVE" :raw-text "SOARING"))
  ("What proteins are in the first pathway"
   (:var mv23465 :isa copular-predication-of-pp :item mv23460 :value mv23464 :prep "IN" :predicate
    mv23455)
   (:var mv23460 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv23464 :isa protein :plural t :in-pathway mv23459 :has-determiner "WHAT" :raw-text
    "proteins")
   (:var mv23459 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv23455 :isa be :present "PRESENT"))
  ("What pathways involve frizzled8?"
   (:var mv23471 :isa involve :theme mv23472 :object mv23467 :present "PRESENT")
   (:var mv23472 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv23467 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What genes are in the first pathway"
   (:var mv23486 :isa copular-predication-of-pp :item mv23481 :value mv23485 :prep "IN" :predicate
    mv23476)
   (:var mv23481 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv23485 :isa gene :plural t :context mv23480 :has-determiner "WHAT" :raw-text "genes")
   (:var mv23480 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv23476 :isa be :present "PRESENT"))
  ("What questions can you answer about microRNAs?"
   (:var mv23501 :isa answer :patient mv23499 :modal mv23492 :agent mv23493 :theme mv23498 :present
    "PRESENT")
   (:var mv23499 :isa bio-question :plural t :has-determiner "WHAT") (:var mv23492 :isa can)
   (:var mv23493 :isa interlocutor :name "hearer")
   (:var mv23498 :isa micro-rna :plural t :raw-text "microRNAs"))
  ("What transcription factors regulate mothers against decapentaplegic?"
   (:var mv23506 :isa regulate :agent mv23507 :object mv23504 :present "PRESENT" :raw-text
    "regulate")
   (:var mv23507 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv23504 :isa protein-family :raw-text "mothers against decapentaplegic" :name "SMAD"
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
   (:var mv23511 :isa regulate :location mv23509 :agent mv23508 :object mv23512 :present "PRESENT"
    :raw-text "regulate")
   (:var mv23509 :isa where)
   (:var mv23508 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23512 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which KEGG pathways involve ATP?"
   (:var mv23517 :isa involve :theme mv23520 :object mv23518 :present "PRESENT")
   (:var mv23520 :isa pathway :plural t :has-determiner "WHICH" :modifier mv23514 :raw-text
    "pathways")
   (:var mv23514 :isa database :name "KEGG" :uid "KEGG")
   (:var mv23518 :isa nucleotide :raw-text "ATP" :name "adenosine 5'-triphosphate" :uid
    "PCID:5957"))
  ("Which genes are in the MAPK signaling pathway?"
   (:var mv23534 :isa copular-predication-of-pp :item mv23529 :value mv23533 :prep "IN" :predicate
    mv23525)
   (:var mv23529 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv23533 :isa gene :plural t :context mv23521 :has-determiner "WHICH" :raw-text "genes")
   (:var mv23521 :isa signaling-pathway :has-determiner "THE" :modifier mv23528 :raw-text
    "signaling pathway")
   (:var mv23528 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv23525 :isa be :present "PRESENT"))
  ("Which genes are involved in the oncogenic MAPK signaling pathway?"
   (:var mv23547 :isa involve :object mv23546 :|context-OR-theme| mv23536 :present "PRESENT")
   (:var mv23546 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv23536 :isa signaling-pathway :has-determiner "THE" :predication mv23544 :modifier
    mv23545 :raw-text "signaling pathway")
   (:var mv23544 :isa oncogenic)
   (:var mv23545 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv23552 :isa regulate :agent mv23554 :object mv23553 :present "PRESENT" :raw-text
    "regulate")
   (:var mv23554 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv23553 :isa bio-entity :name "x"))
  ("Which kinases negatively regulate x?"
   (:var mv23555 :isa downregulate :agent mv23560 :object mv23559 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv23560 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv23559 :isa bio-entity :name "x"))
  ("Which kinases positively regulate x?"
   (:var mv23561 :isa upregulate :agent mv23566 :object mv23565 :present "PRESENT" :raw-text
    "positively regulate")
   (:var mv23566 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv23565 :isa bio-entity :name "x"))
  ("Which of these are in immune pathways?"
   (:var mv23577 :isa copular-predication-of-pp :item mv23569 :value mv23575 :prep mv23571
    :predicate mv23570)
   (:var mv23569 :isa these :quantifier mv23567 :word "these") (:var mv23567 :isa which)
   (:var mv23575 :isa pathway :plural t :modifier mv23572 :raw-text "pathways")
   (:var mv23572 :isa immune :name "immune") (:var mv23571 :isa in :word "in")
   (:var mv23570 :isa be :present "PRESENT"))
  ("Which of these are in immune system pathways?"
   (:var mv23589 :isa copular-predication-of-pp :item mv23582 :value mv23587 :prep mv23584
    :predicate mv23583)
   (:var mv23582 :isa these :quantifier mv23580 :word "these") (:var mv23580 :isa which)
   (:var mv23587 :isa pathway :plural t :non-cellular-location mv23579 :raw-text "pathways")
   (:var mv23579 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv23584 :isa in :word "in") (:var mv23583 :isa be :present "PRESENT"))
  ("What are the genes STAT3 regulates?"
   (:var mv23593 :isa be :subject mv23592 :predicate mv23599 :present "PRESENT")
   (:var mv23592 :isa what)
   (:var mv23599 :isa gene :plural t :predication mv23597 :has-determiner "THE" :raw-text "genes")
   (:var mv23597 :isa regulate :object mv23599 :agent mv23591 :present "PRESENT" :raw-text
    "regulates")
   (:var mv23591 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of those are in the immune pathway?"
   (:var mv23609 :isa copular-predication-of-pp :item mv23602 :value mv23607 :prep mv23604
    :predicate mv23603)
   (:var mv23602 :isa those :quantifier mv23600 :word "those") (:var mv23600 :isa which)
   (:var mv23607 :isa pathway :has-determiner "THE" :modifier mv23606 :raw-text "pathway")
   (:var mv23606 :isa immune :name "immune") (:var mv23604 :isa in :word "in")
   (:var mv23603 :isa be :present "PRESENT"))
  ("Which pathways involve p53?"
   (:var mv23615 :isa involve :theme mv23616 :object mv23611 :present "PRESENT")
   (:var mv23616 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv23611 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("can you show me the pahtways that involve SRF"
   (:var mv23626 :isa polar-question :statement mv23619)
   (:var mv23619 :isa show :agent mv23618 :|statement-OR-theme| mv23622 :beneficiary mv23620 :modal
    "CAN")
   (:var mv23618 :isa interlocutor :name "hearer")
   (:var mv23622 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv23620 :isa interlocutor :name "speaker"))
  ("Does Selumetinib inhibit MAP2K1?" (:var mv23632 :isa polar-question :statement mv23631)
   (:var mv23631 :isa inhibit :agent mv23629 :object mv23627 :raw-text "inhibit")
   (:var mv23629 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv23627 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's build a model of the KRAS neighborhood."
   (:var mv23642 :isa explicit-suggestion :suggestion mv23634 :marker let-as-directive)
   (:var mv23634 :isa build :artifact mv23636 :present "PRESENT")
   (:var mv23636 :isa model :object mv23640 :has-determiner "A")
   (:var mv23640 :isa neighborhood :has-determiner "THE" :modifier mv23639)
   (:var mv23639 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN"))
  ("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
   (:var mv23660 :isa collection :type know :number 2 :items (mv23658 mv23659))
   (:var mv23658 :isa know :agent mv23643 :statement mv23649 :present "PRESENT")
   (:var mv23643 :isa interlocutor :name "speaker")
   (:var mv23649 :isa bio-activate :agent mv23648 :object mv23650 :present "PRESENT" :raw-text
    "activates")
   (:var mv23648 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv23650 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv23659 :isa collection :raw-text "Raf activates Mek and Mek activates Erk" :type
    bio-activate :number 2 :items (mv23652 mv23656))
   (:var mv23652 :isa bio-activate :agent mv23651 :object mv23653 :present "PRESENT" :raw-text
    "activates")
   (:var mv23651 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv23653 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv23656 :isa bio-activate :agent mv23655 :object mv23657 :present "PRESENT" :raw-text
    "activates")
   (:var mv23655 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv23657 :isa protein-family :raw-text "Erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP2K1 phosphorylates MAPK1."
   (:var mv23663 :isa phosphorylate :agent mv23661 :substrate mv23662 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv23661 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv23662 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1."
   (:var mv23666 :isa dephosphorylate :agent mv23664 :substrate mv23665 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv23664 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv23665 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 always high?"
   (:var mv23677 :isa polar-question :statement mv23676)
   (:var mv23676 :isa copular-predication :item mv23670 :value mv23674 :predicate mv23668)
   (:var mv23670 :isa bio-amount :measured-item mv23667 :has-determiner "THE" :raw-text "amount")
   (:var mv23667 :isa protein :predication mv23672 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv23672 :isa phosphorylate :substrate mv23667 :raw-text "phosphorylated")
   (:var mv23674 :isa high :adverb mv23673) (:var mv23673 :isa always :name "always")
   (:var mv23668 :isa be))
  ("Is the amount of phosphorylated MAPK1 always low?"
   (:var mv23688 :isa polar-question :statement mv23687)
   (:var mv23687 :isa copular-predication :item mv23681 :value mv23685 :predicate mv23679)
   (:var mv23681 :isa bio-amount :measured-item mv23678 :has-determiner "THE" :raw-text "amount")
   (:var mv23678 :isa protein :predication mv23683 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv23683 :isa phosphorylate :substrate mv23678 :raw-text "phosphorylated")
   (:var mv23685 :isa low :adverb mv23684) (:var mv23684 :isa always :name "always")
   (:var mv23679 :isa be))
  ("Does the MAP2K1-MAPK1 complex vanish?" (:var mv23698 :isa polar-question :statement mv23697)
   (:var mv23697 :isa vanish :agent mv23696 :raw-text "vanish")
   (:var mv23696 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv23690
    :component mv23689)
   (:var mv23690 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv23689 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Does the DUSP6-MAPK1 complex vanish?" (:var mv23708 :isa polar-question :statement mv23707)
   (:var mv23707 :isa vanish :agent mv23706 :raw-text "vanish")
   (:var mv23706 :isa bio-complex :has-determiner "THE" :raw-text "DUSP6-MAPK1" :component mv23700
    :component mv23699)
   (:var mv23700 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv23699 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN"))
  ("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv23738 :isa polar-question :statement mv23737)
   (:var mv23737 :isa event-relation :subordinated-event mv23734 :event mv23730)
   (:var mv23734 :isa wh-question :statement mv23731 :wh if)
   (:var mv23731 :isa increase :|agent-OR-cause| mv23718 :|multiplier-OR-cause| mv23729
    :|affected-process-OR-object| mv23722 :raw-text "increase")
   (:var mv23718 :isa interlocutor :name "person-and-machine")
   (:var mv23729 :isa measurement :number mv23726) (:var mv23726 :isa number :value 10)
   (:var mv23722 :isa bio-amount :measured-item mv23710 :has-determiner "THE" :raw-text "amount")
   (:var mv23710 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv23730 :isa vanish :cause mv23713 :raw-text "vanish")
   (:var mv23713 :isa bio-amount :measured-item mv23709 :has-determiner "THE" :raw-text "amount")
   (:var mv23709 :isa protein :predication mv23715 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv23715 :isa phosphorylate :substrate mv23709 :raw-text "phosphorylated"))
  ("Show me the evidence that kras regulates fzd8."
   (:var mv23740 :isa show :|statement-OR-theme| mv23747 :beneficiary mv23741 :present "PRESENT")
   (:var mv23747 :isa evidence :statement mv23746 :has-determiner "THE")
   (:var mv23746 :isa regulate :agent mv23745 :object mv23739 :present "PRESENT" :raw-text
    "regulates")
   (:var mv23745 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv23739 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv23741 :isa interlocutor :name "speaker"))
  ("What increases the amount of fzd8?"
   (:var mv23752 :isa increase :|agent-OR-cause| mv23749 :|affected-process-OR-object| mv23754
    :present "PRESENT" :raw-text "increases")
   (:var mv23749 :isa what)
   (:var mv23754 :isa bio-amount :measured-item mv23748 :has-determiner "THE" :raw-text "amount")
   (:var mv23748 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which kinases are in the MAPK signaling pathway?"
   (:var mv23770 :isa copular-predication-of-pp :item mv23765 :value mv23769 :prep "IN" :predicate
    mv23761)
   (:var mv23765 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv23769 :isa kinase :plural t :in-pathway mv23757 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv23757 :isa signaling-pathway :has-determiner "THE" :modifier mv23764 :raw-text
    "signaling pathway")
   (:var mv23764 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv23761 :isa be :present "PRESENT"))
  ("Does STAT3 regulate the c-fos gene in the liver?"
   (:var mv23783 :isa polar-question :statement mv23781)
   (:var mv23781 :isa regulate :agent mv23772 :object mv23777 :raw-text "regulate")
   (:var mv23772 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23777 :isa gene :organ mv23780 :has-determiner "THE" :expresses mv23773 :raw-text
    "gene")
   (:var mv23780 :isa liver :has-determiner "THE")
   (:var mv23773 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are regulated by smad2?"
   (:var mv23792 :isa regulate :object mv23791 :agent mv23784 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23791 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv23784 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by smad2?"
   (:var mv23801 :isa regulate :|affected-process-OR-object| mv23797 :agent mv23794 :present
    "PRESENT" :raw-text "regulated")
   (:var mv23797 :isa these :quantifier mv23795 :word "these") (:var mv23795 :isa which)
   (:var mv23794 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these also regulate cfos?"
   (:var mv23809 :isa regulate :|agent-OR-cause| mv23806 :object mv23810 :present "PRESENT" :adverb
    mv23807 :raw-text "regulate")
   (:var mv23806 :isa these :quantifier mv23804 :word "these") (:var mv23804 :isa which)
   (:var mv23810 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv23807 :isa also :name "also"))
  ("what transcription factors transcribe SMURF2?"
   (:var mv23816 :isa transcribe :agent mv23817 :object mv23814 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv23817 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv23814 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("what transcription factor transcribes SMURF2?"
   (:var mv23821 :isa transcribe :agent mv23818 :object mv23819 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv23818 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv23819 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which KEGG pathways utilize SRF?"
   (:var mv23826 :isa bio-utilize :agent mv23829 :object mv23827 :present "PRESENT" :raw-text
    "utilize")
   (:var mv23829 :isa pathway :plural t :has-determiner "WHICH" :modifier mv23823 :raw-text
    "pathways")
   (:var mv23823 :isa database :name "KEGG" :uid "KEGG")
   (:var mv23827 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors are in the calcium regulated pathways?"
   (:var mv23847 :isa copular-predication-of-pp :item mv23840 :value mv23846 :prep "IN" :predicate
    mv23833)
   (:var mv23840 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv23846 :isa transcription-factor :plural t :in-pathway mv23842 :has-determiner "WHAT"
    :raw-text "transcription factors")
   (:var mv23842 :isa pathway :plural t :has-determiner "THE" :predication mv23837 :raw-text
    "pathways")
   (:var mv23837 :isa regulate :affected-process mv23842 :agent mv23836 :raw-text "regulated")
   (:var mv23836 :isa calcium :raw-text "calcium") (:var mv23833 :isa be :present "PRESENT"))
  ("What pathways involve the immune system?"
   (:var mv23853 :isa involve :theme mv23855 :object mv23849 :present "PRESENT")
   (:var mv23855 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv23849 :isa bio-organ :has-determiner "THE" :name "immune system" :uid "UBERON:0002405"))
  ("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
   (:var mv23862 :isa involve :theme mv23867 :object mv23865 :present "PRESENT")
   (:var mv23867 :isa pathway :plural t :has-determiner "WHAT" :modifier mv23859 :raw-text
    "pathways")
   (:var mv23859 :isa database :name "KEGG" :uid "KEGG")
   (:var mv23865 :isa collection :raw-text "ERBB2, JUN, and MAPK8" :type protein :number 3 :items
    (mv23856 mv23863 mv23857))
   (:var mv23856 :isa protein :raw-text "ERBB2" :uid "UP:P04626" :name "ERBB2_HUMAN")
   (:var mv23863 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN")
   (:var mv23857 :isa protein :raw-text "MAPK8" :uid "UP:P45983" :name "MK08_HUMAN"))
  ("What pathways are shared by these genes?"
   (:var mv23878 :isa share :object mv23877 :participant mv23879 :present "PRESENT" :raw-text
    "shared")
   (:var mv23877 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv23879 :isa gene :plural t :has-determiner "THESE" :raw-text "genes"))
  ("what genes are regulated by srf?"
   (:var mv23889 :isa regulate :object mv23888 :agent mv23887 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23888 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv23887 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are common pathways for these genes?"
   (:var mv23892 :isa be :subject mv23891 :predicate mv23903 :present "PRESENT")
   (:var mv23891 :isa what)
   (:var mv23903 :isa pathway :plural t :pathwaycomponent mv23901 :predication mv23893 :raw-text
    "pathways")
   (:var mv23901 :isa gene :plural t :has-determiner "THESE" :raw-text "genes")
   (:var mv23893 :isa common))
  ("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
   (:var mv23920 :isa share :object mv23919 :participant mv23921 :present "PRESENT" :raw-text
    "shared")
   (:var mv23919 :isa pathway :plural t :has-determiner "WHICH" :modifier mv23908 :raw-text
    "pathways")
   (:var mv23908 :isa immune :name "immune")
   (:var mv23921 :isa gene :plural t :expresses mv23917 :raw-text "genes")
   (:var mv23917 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv23904 mv23905 mv23906))
   (:var mv23904 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23905 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv23906 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("What MAP kinase phosphatase are regulated by ELK1?"
   (:var mv23930 :isa regulate :object mv23926 :agent mv23924 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23926 :isa phosphatase :has-determiner "WHAT" :enzyme mv23923 :raw-text "phosphatase")
   (:var mv23923 :isa protein-family :raw-text "MAP kinase" :name
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
   (:var mv23924 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What reactome pathways involve immune system?"
   (:var mv23937 :isa involve :theme mv23939 :object mv23932 :present "PRESENT")
   (:var mv23939 :isa pathway :plural t :has-determiner "WHAT" :modifier mv23934 :raw-text
    "pathways")
   (:var mv23934 :isa database :name "Reactome" :uid "Reactome")
   (:var mv23932 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Is stat3 a kinase?" (:var mv23944 :isa polar-question :statement mv23941)
   (:var mv23941 :isa be :subject mv23940 :predicate mv23943)
   (:var mv23940 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23943 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is STAT3 a transcription factor?" (:var mv23949 :isa polar-question :statement mv23947)
   (:var mv23947 :isa be :subject mv23945 :predicate mv23946)
   (:var mv23945 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23946 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Which of these are protein kinases?"
   (:var mv23953 :isa be :subject mv23952 :predicate mv23957 :present "PRESENT")
   (:var mv23952 :isa these :quantifier mv23950 :word "these") (:var mv23950 :isa which)
   (:var mv23957 :isa kinase :plural t :enzyme mv23954 :raw-text "kinases")
   (:var mv23954 :isa protein :raw-text "protein"))
  ("Which of these are tyrosine kinases?"
   (:var mv23964 :isa be :subject mv23963 :predicate mv23960 :present "PRESENT")
   (:var mv23963 :isa these :quantifier mv23961 :word "these") (:var mv23961 :isa which)
   (:var mv23960 :isa protein-family :plural t :raw-text "tyrosine kinases" :uid "NCIT:C17020"
    :name "protein tyrosine kinase"))
  ("Which of these are serine/threonine kinases?"
   (:var mv23969 :isa be :subject mv23968 :predicate mv23975 :present "PRESENT")
   (:var mv23968 :isa these :quantifier mv23966 :word "these") (:var mv23966 :isa which)
   (:var mv23975 :isa kinase :plural t :amino-acid mv23974 :raw-text "kinases")
   (:var mv23974 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv23970 mv23971))
   (:var mv23970 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv23971 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are phosphatases?"
   (:var mv23980 :isa be :subject mv23979 :predicate mv23982 :present "PRESENT")
   (:var mv23979 :isa these :quantifier mv23977 :word "these") (:var mv23977 :isa which)
   (:var mv23982 :isa phosphatase :plural t :raw-text "phosphatases"))
  ("Which of these are proteases?"
   (:var mv23987 :isa be :subject mv23986 :predicate mv23988 :present "PRESENT")
   (:var mv23986 :isa these :quantifier mv23984 :word "these") (:var mv23984 :isa which)
   (:var mv23988 :isa protein :raw-text "proteases" :uid "UP:P63127" :name "VPK9_HUMAN"))
  ("Which of these are receptors?"
   (:var mv23993 :isa be :subject mv23992 :predicate mv23995 :present "PRESENT")
   (:var mv23992 :isa these :quantifier mv23990 :word "these") (:var mv23990 :isa which)
   (:var mv23995 :isa receptor :plural t :raw-text "receptors"))
  ("Which of these are tyrosine kinase receptors?"
   (:var mv24001 :isa be :subject mv24000 :predicate mv24004 :present "PRESENT")
   (:var mv24000 :isa these :quantifier mv23998 :word "these") (:var mv23998 :isa which)
   (:var mv24004 :isa receptor :plural t :modifier mv23997 :raw-text "receptors")
   (:var mv23997 :isa protein-family :raw-text "tyrosine kinase" :name "protein tyrosine kinase"
    :uid "NCIT:C17020"))
  ("Which of these are histone demethylases?"
   (:var mv24011 :isa be :subject mv24010 :predicate mv24007 :present "PRESENT")
   (:var mv24010 :isa these :quantifier mv24008 :word "these") (:var mv24008 :isa which)
   (:var mv24007 :isa protein-family :plural t :raw-text "histone demethylases" :uid "GO:0032452"
    :name "histone demethylase"))
  ("Which of these are histone methylases?"
   (:var mv24018 :isa be :subject mv24017 :predicate mv24014 :present "PRESENT")
   (:var mv24017 :isa these :quantifier mv24015 :word "these") (:var mv24015 :isa which)
   (:var mv24014 :isa protein-family :plural t :raw-text "histone methylases" :uid "GO:0042054"
    :name "histone methyltransferase"))
  ("Which of these are histone methyltransferases?"
   (:var mv24025 :isa be :subject mv24024 :predicate mv24021 :present "PRESENT")
   (:var mv24024 :isa these :quantifier mv24022 :word "these") (:var mv24022 :isa which)
   (:var mv24021 :isa protein-family :plural t :raw-text "histone methyltransferases" :uid
    "GO:0042054" :name "histone methyltransferase"))
  ("Which of these are demethylases?"
   (:var mv24030 :isa be :subject mv24029 :predicate mv24032 :present "PRESENT")
   (:var mv24029 :isa these :quantifier mv24027 :word "these") (:var mv24027 :isa which)
   (:var mv24032 :isa protein-family :plural t :raw-text "demethylases" :uid "GO:0032451" :name
    "demethylase"))
  ("Which of these are methylases?"
   (:var mv24037 :isa be :subject mv24036 :predicate mv24039 :present "PRESENT")
   (:var mv24036 :isa these :quantifier mv24034 :word "these") (:var mv24034 :isa which)
   (:var mv24039 :isa protein-family :plural t :raw-text "methylases" :uid "GO:0008168" :name
    "methyltransferase"))
  ("Which of these are methyltransferases?"
   (:var mv24044 :isa be :subject mv24043 :predicate mv24046 :present "PRESENT")
   (:var mv24043 :isa these :quantifier mv24041 :word "these") (:var mv24041 :isa which)
   (:var mv24046 :isa protein-family :plural t :raw-text "methyltransferases" :uid "GO:0008168"
    :name "methyltransferase"))
  ("Which of these are steroid receptors?"
   (:var mv24051 :isa be :subject mv24050 :predicate mv24055 :present "PRESENT")
   (:var mv24050 :isa these :quantifier mv24048 :word "these") (:var mv24048 :isa which)
   (:var mv24055 :isa receptor :plural t :modifier mv24052 :raw-text "receptors")
   (:var mv24052 :isa molecule :raw-text "steroid" :name "steroid" :uid "CHEBI:35341"))
  ("Which of these are receptor tyrosine kinases?"
   (:var mv24062 :isa be :subject mv24061 :predicate mv24058 :present "PRESENT")
   (:var mv24061 :isa these :quantifier mv24059 :word "these") (:var mv24059 :isa which)
   (:var mv24058 :isa protein-family :plural t :raw-text "receptor tyrosine kinases" :uid
    "NCIT:C17660" :family-members
    ((protein (:name "TKTL1_HUMAN") (:uid "UP:P51854"))
     (protein (:name "NTRK1_HUMAN") (:uid "UP:P04629")))
    :count 2 :name "receptor tyrosine kinase"))
  ("Which of these are transcription factors?"
   (:var mv24069 :isa be :subject mv24068 :predicate mv24065 :present "PRESENT")
   (:var mv24068 :isa these :quantifier mv24066 :word "these") (:var mv24066 :isa which)
   (:var mv24065 :isa transcription-factor :plural t :raw-text "transcription factors"))
  ("Which of these are DNA binding proteins?"
   (:var mv24075 :isa be :subject mv24074 :predicate mv24078 :present "PRESENT")
   (:var mv24074 :isa these :quantifier mv24072 :word "these") (:var mv24072 :isa which)
   (:var mv24078 :isa protein :plural t :modifier mv24071 :raw-text "proteins")
   (:var mv24071 :isa dna-binding :raw-text "DNA binding"))
  ("Which of these are serine/threonine phosphatases?"
   (:var mv24083 :isa be :subject mv24082 :predicate mv24089 :present "PRESENT")
   (:var mv24082 :isa these :quantifier mv24080 :word "these") (:var mv24080 :isa which)
   (:var mv24089 :isa phosphatase :plural t :modifier mv24088 :raw-text "phosphatases")
   (:var mv24088 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv24084 mv24085))
   (:var mv24084 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv24085 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are tyrosine phosphatases?"
   (:var mv24094 :isa be :subject mv24093 :predicate mv24098 :present "PRESENT")
   (:var mv24093 :isa these :quantifier mv24091 :word "these") (:var mv24091 :isa which)
   (:var mv24098 :isa phosphatase :plural t :modifier mv24095 :raw-text "phosphatases")
   (:var mv24095 :isa amino-acid :raw-text "tyrosine" :name "tyrosine"))
  ("What does MEK phosphorylate?"
   (:var mv24103 :isa phosphorylate :|substrate-OR-site-OR-amino-acid| mv24100 :agent mv24102
    :present "PRESENT" :raw-text "phosphorylate")
   (:var mv24100 :isa what)
   (:var mv24102 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("which of these are exclusively expressed in liver?"
   (:var mv24112 :isa gene-transcript-express :object mv24106 :organ mv24111 :present "PRESENT"
    :adverb mv24108 :raw-text "expressed")
   (:var mv24106 :isa these :quantifier mv24104 :word "these") (:var mv24104 :isa which)
   (:var mv24111 :isa liver) (:var mv24108 :isa exclusively :name "exclusively"))
  ("What regulates frizzled8?"
   (:var mv24117 :isa regulate :|agent-OR-cause| mv24116 :object mv24115 :present "PRESENT"
    :raw-text "regulates")
   (:var mv24116 :isa what)
   (:var mv24115 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What increases the amount of myc?"
   (:var mv24121 :isa increase :|agent-OR-cause| mv24118 :|affected-process-OR-object| mv24123
    :present "PRESENT" :raw-text "increases")
   (:var mv24118 :isa what)
   (:var mv24123 :isa bio-amount :measured-item mv24125 :has-determiner "THE" :raw-text "amount")
   (:var mv24125 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What upregulates myc?"
   (:var mv24128 :isa upregulate :|agent-OR-cause| mv24127 :object mv24129 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv24127 :isa what)
   (:var mv24129 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What downregulates myc?"
   (:var mv24131 :isa downregulate :|agent-OR-cause| mv24130 :object mv24132 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv24130 :isa what)
   (:var mv24132 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What decreases the amount of GFAP?"
   (:var mv24134 :isa decrease :|agent-OR-cause| mv24133 :|affected-process-OR-object| mv24136
    :present "PRESENT" :raw-text "decreases")
   (:var mv24133 :isa what)
   (:var mv24136 :isa bio-amount :measured-item mv24138 :has-determiner "THE" :raw-text "amount")
   (:var mv24138 :isa protein :raw-text "GFAP" :uid "UP:P14136" :name "GFAP_HUMAN"))
  ("What regulates GLUL?"
   (:var mv24141 :isa regulate :|agent-OR-cause| mv24140 :object mv24142 :present "PRESENT"
    :raw-text "regulates")
   (:var mv24140 :isa what)
   (:var mv24142 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("What regulates GLUL from the literature?"
   (:var mv24144 :isa regulate :|agent-OR-cause| mv24143 :object mv24145 :present "PRESENT"
    :raw-text "regulates")
   (:var mv24143 :isa what)
   (:var mv24145 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("What regulates GLUL from the GEO RNAi database?"
   (:var mv24152 :isa regulate :|agent-OR-cause| mv24151 :object mv24153 :present "PRESENT"
    :raw-text "regulates")
   (:var mv24151 :isa what)
   (:var mv24153 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("Which kinases regulate the cfos gene?"
   (:var mv24160 :isa regulate :agent mv24164 :object mv24163 :present "PRESENT" :raw-text
    "regulate")
   (:var mv24164 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv24163 :isa gene :has-determiner "THE" :expresses mv24162 :raw-text "gene")
   (:var mv24162 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which kinases negatively regulate the cfos gene?"
   (:var mv24165 :isa downregulate :agent mv24172 :object mv24171 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv24172 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv24171 :isa gene :has-determiner "THE" :expresses mv24170 :raw-text "gene")
   (:var mv24170 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are positive regulators of the cfos gene?"
   (:var mv24176 :isa be :subject mv24175 :predicate mv24182 :present "PRESENT")
   (:var mv24175 :isa what)
   (:var mv24182 :isa positive-regulator :plural t :theme mv24180 :raw-text "positive regulators")
   (:var mv24180 :isa gene :has-determiner "THE" :expresses mv24179 :raw-text "gene")
   (:var mv24179 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What transcribes ZEB1?"
   (:var mv24185 :isa transcribe :|agent-OR-cause| mv24184 :object mv24183 :present "PRESENT"
    :raw-text "transcribes")
   (:var mv24184 :isa what)
   (:var mv24183 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("Show me the evidence that IL6 increases the amount of SOCS1."
   (:var mv24188 :isa show :|statement-OR-theme| mv24200 :beneficiary mv24189 :present "PRESENT")
   (:var mv24200 :isa evidence :statement mv24195 :has-determiner "THE")
   (:var mv24195 :isa increase :agent mv24186 :|affected-process-OR-object| mv24197 :present
    "PRESENT" :raw-text "increases")
   (:var mv24186 :isa protein :raw-text "IL6" :uid "UP:P05231" :name "IL6_HUMAN")
   (:var mv24197 :isa bio-amount :measured-item mv24187 :has-determiner "THE" :raw-text "amount")
   (:var mv24187 :isa protein :raw-text "SOCS1" :uid "UP:O15524" :name "SOCS1_HUMAN")
   (:var mv24189 :isa interlocutor :name "speaker"))
  ("Show me the evidence that KRAS decreasse the amount of FZD8."
   (:var mv24202 :isa show :|statement-OR-theme| mv24205 :beneficiary mv24203 :present "PRESENT")
   (:var mv24205 :isa evidence :has-determiner "THE")
   (:var mv24203 :isa interlocutor :name "speaker"))
  ("What is the evidence that kras regulates frizzled8?"
   (:var mv24215 :isa be :subject mv24214 :predicate mv24221 :present "PRESENT")
   (:var mv24214 :isa what) (:var mv24221 :isa evidence :statement mv24220 :has-determiner "THE")
   (:var mv24220 :isa regulate :agent mv24219 :object mv24213 :present "PRESENT" :raw-text
    "regulates")
   (:var mv24219 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv24213 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that SRF binds the cfos gene?"
   (:var mv24223 :isa be :subject mv24222 :predicate mv24232 :present "PRESENT")
   (:var mv24222 :isa what) (:var mv24232 :isa evidence :statement mv24228 :has-determiner "THE")
   (:var mv24228 :isa binding :binder mv24227 :direct-bindee mv24231 :present "PRESENT" :raw-text
    "binds")
   (:var mv24227 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv24231 :isa gene :has-determiner "THE" :expresses mv24230 :raw-text "gene")
   (:var mv24230 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are exclusively expressed in liver?"
   (:var mv24242 :isa gene-transcript-express :object mv24241 :organ mv24240 :present "PRESENT"
    :adverb mv24237 :raw-text "expressed")
   (:var mv24241 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv24240 :isa liver) (:var mv24237 :isa exclusively :name "exclusively"))
  ("Is stat3 expressed in liver?" (:var mv24250 :isa polar-question :statement mv24246)
   (:var mv24246 :isa gene-transcript-express :object mv24244 :organ mv24248 :past "PAST" :raw-text
    "expressed")
   (:var mv24244 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv24248 :isa liver))
  ("Is stat3 exclusively expressed in liver?" (:var mv24259 :isa polar-question :statement mv24257)
   (:var mv24257 :isa gene-transcript-express :object mv24251 :organ mv24256 :adverb mv24253
    :raw-text "expressed")
   (:var mv24251 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv24256 :isa liver) (:var mv24253 :isa exclusively :name "exclusively"))
  ("How does MAP4K2 affect CXCL8?"
   (:var mv24264 :isa affect :manner mv24262 :agent mv24260 :object mv24261 :present "PRESENT"
    :raw-text "affect")
   (:var mv24262 :isa how)
   (:var mv24260 :isa protein :raw-text "MAP4K2" :uid "UP:Q12851" :name "M4K2_HUMAN")
   (:var mv24261 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("How does ERK affect CXCL8?"
   (:var mv24269 :isa affect :manner mv24266 :agent mv24268 :object mv24265 :present "PRESENT"
    :raw-text "affect")
   (:var mv24266 :isa how)
   (:var mv24268 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24265 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstream regulators of CXCL8 and CXCL10?"
   (:var mv24273 :isa be :subject mv24272 :predicate mv24287 :present "PRESENT")
   (:var mv24272 :isa what)
   (:var mv24287 :isa regulator :plural t :theme mv24282 :has-determiner "THE" :predication mv24275
    :context mv24276 :raw-text "regulators")
   (:var mv24282 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv24270 mv24271))
   (:var mv24270 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24271 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv24275 :isa common) (:var mv24276 :isa upstream-segment :raw-text "upstream"))
  ("What are the paths between MAP3K7 and CXCL8?"
   (:var mv24291 :isa be :subject mv24290 :predicate mv24300 :present "PRESENT")
   (:var mv24290 :isa what)
   (:var mv24300 :isa path :plural t :endpoints mv24297 :has-determiner "THE")
   (:var mv24297 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv24288 mv24289))
   (:var mv24288 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24289 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does MAP3K7 affect IKK?" (:var mv24306 :isa polar-question :statement mv24305)
   (:var mv24305 :isa affect :agent mv24301 :object mv24304 :raw-text "affect")
   (:var mv24301 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24304 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 regulates IKK"
   (:var mv24308 :isa regulate :agent mv24307 :object mv24309 :present "PRESENT" :raw-text
    "regulates")
   (:var mv24307 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24309 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 positively regulates IKK"
   (:var mv24311 :isa upregulate :agent mv24310 :object mv24312 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv24310 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24312 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("NFkappaB positively regulates CXCL8."
   (:var mv24313 :isa upregulate :agent mv24315 :object mv24314 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv24315 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24314 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does NFkappaB regulate the CXCL8 gene?" (:var mv24325 :isa polar-question :statement mv24324)
   (:var mv24324 :isa regulate :agent mv24319 :object mv24323 :raw-text "regulate")
   (:var mv24319 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24323 :isa gene :has-determiner "THE" :expresses mv24317 :raw-text "gene")
   (:var mv24317 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Show me the evidence that NFkappaB regulates CXCL8"
   (:var mv24327 :isa show :|statement-OR-theme| mv24335 :beneficiary mv24328 :present "PRESENT")
   (:var mv24335 :isa evidence :statement mv24334 :has-determiner "THE")
   (:var mv24334 :isa regulate :agent mv24332 :object mv24326 :present "PRESENT" :raw-text
    "regulates")
   (:var mv24332 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24326 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24328 :isa interlocutor :name "speaker"))
  ("Does ERK regulate the CXCL8 gene?" (:var mv24343 :isa polar-question :statement mv24342)
   (:var mv24342 :isa regulate :agent mv24338 :object mv24341 :raw-text "regulate")
   (:var mv24338 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24341 :isa gene :has-determiner "THE" :expresses mv24336 :raw-text "gene")
   (:var mv24336 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("ERK decreases the amount of CXCL8"
   (:var mv24346 :isa decrease :agent mv24345 :|affected-process-OR-object| mv24348 :present
    "PRESENT" :raw-text "decreases")
   (:var mv24345 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24348 :isa bio-amount :measured-item mv24344 :has-determiner "THE" :raw-text "amount")
   (:var mv24344 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does TNG regulate ERK?" (:var mv24356 :isa polar-question :statement mv24355)
   (:var mv24355 :isa regulate :agent mv24354 :object mv24353 :raw-text "regulate")
   (:var mv24354 :isa bio-entity :name "TNG")
   (:var mv24353 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate the ERK gene?" (:var mv24364 :isa polar-question :statement mv24363)
   (:var mv24363 :isa regulate :agent mv24358 :object mv24362 :raw-text "regulate")
   (:var mv24358 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24362 :isa gene :has-determiner "THE" :expresses mv24361 :raw-text "gene")
   (:var mv24361 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNG and ERK?"
   (:var mv24366 :isa be :subject mv24365 :predicate mv24377 :present "PRESENT")
   (:var mv24365 :isa what)
   (:var mv24377 :isa pathway :plural t :pathwaycomponent mv24374 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv24374 :isa collection :raw-text "TNG and ERK" :type protein-family :number 2 :items
    (mv24371 mv24373))
   (:var mv24371 :isa bio-entity :name "TNG")
   (:var mv24373 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNF and ERK?"
   (:var mv24379 :isa be :subject mv24378 :predicate mv24390 :present "PRESENT")
   (:var mv24378 :isa what)
   (:var mv24390 :isa pathway :plural t :pathwaycomponent mv24387 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv24387 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv24384 mv24386))
   (:var mv24384 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24386 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate ERK?" (:var mv24397 :isa polar-question :statement mv24396)
   (:var mv24396 :isa regulate :agent mv24392 :object mv24395 :raw-text "regulate")
   (:var mv24392 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24395 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate the ERK gene?" (:var mv24406 :isa polar-question :statement mv24405)
   (:var mv24405 :isa regulate :agent mv24399 :object mv24404 :raw-text "regulate")
   (:var mv24399 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24404 :isa gene :has-determiner "THE" :expresses mv24403 :raw-text "gene")
   (:var mv24403 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What pathways exist between NFkappaB and ERK?"
   (:var mv24422 :isa copular-predication-of-pp :item mv24417 :value mv24421 :prep "BETWEEN"
    :predicate mv24410)
   (:var mv24417 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv24421 :isa pathway :plural t :pathwaycomponent mv24416 :has-determiner "WHAT" :raw-text
    "pathways")
   (:var mv24416 :isa collection :raw-text "NFkappaB and ERK" :type protein-family :number 2 :items
    (mv24413 mv24415))
   (:var mv24413 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24415 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24410 :isa exist :present "PRESENT"))
  ("How does NFkappaB affect ERK?"
   (:var mv24428 :isa affect :manner mv24424 :agent mv24426 :object mv24429 :present "PRESENT"
    :raw-text "affect")
   (:var mv24424 :isa how)
   (:var mv24426 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24429 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP3K7 activates IKK"
   (:var mv24431 :isa bio-activate :agent mv24430 :object mv24432 :present "PRESENT" :raw-text
    "activates")
   (:var mv24430 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24432 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("IKK activates TNF"
   (:var mv24434 :isa bio-activate :agent mv24433 :object mv24435 :present "PRESENT" :raw-text
    "activates")
   (:var mv24433 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199")
   (:var mv24435 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN"))
  ("What are the paths between TNF and ERK?"
   (:var mv24437 :isa be :subject mv24436 :predicate mv24448 :present "PRESENT")
   (:var mv24436 :isa what)
   (:var mv24448 :isa path :plural t :endpoints mv24445 :has-determiner "THE")
   (:var mv24445 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv24442 mv24444))
   (:var mv24442 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24444 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate ERK?" (:var mv24454 :isa polar-question :statement mv24453)
   (:var mv24453 :isa regulate :agent mv24450 :object mv24452 :raw-text "regulate")
   (:var mv24450 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24452 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("How does MAP3K7 affect CXCL8?"
   (:var mv24459 :isa affect :manner mv24457 :agent mv24455 :object mv24456 :present "PRESENT"
    :raw-text "affect")
   (:var mv24457 :isa how)
   (:var mv24455 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24456 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("TNF activates ERK"
   (:var mv24461 :isa bio-activate :agent mv24460 :object mv24462 :present "PRESENT" :raw-text
    "activates")
   (:var mv24460 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24462 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active ERK decreases the amount of CXCL8"
   (:var mv24466 :isa decrease :agent mv24465 :|affected-process-OR-object| mv24468 :present
    "PRESENT" :raw-text "decreases")
   (:var mv24465 :isa protein-family :predication mv24464 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24464 :isa active)
   (:var mv24468 :isa bio-amount :measured-item mv24463 :has-determiner "THE" :raw-text "amount")
   (:var mv24463 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstreams of CXCL8 and CXCL10?"
   (:var mv24474 :isa be :subject mv24473 :predicate mv24485 :present "PRESENT")
   (:var mv24473 :isa what)
   (:var mv24485 :isa upstream-segment :plural t :pathwaycomponent mv24481 :has-determiner "THE"
    :predication mv24476 :raw-text "upstreams")
   (:var mv24481 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv24471 mv24472))
   (:var mv24471 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24472 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv24476 :isa common))
  ("How does CXCL8 affect CXCL8?"
   (:var mv24490 :isa affect :manner mv24488 :agent mv24486 :object mv24487 :present "PRESENT"
    :raw-text "affect")
   (:var mv24488 :isa how)
   (:var mv24486 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24487 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does CXCL8 regulate CXCL10?" (:var mv24496 :isa polar-question :statement mv24495)
   (:var mv24495 :isa regulate :agent mv24491 :object mv24492 :raw-text "regulate")
   (:var mv24491 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24492 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does CXCL8 regulate the CXCL10 gene?" (:var mv24504 :isa polar-question :statement mv24503)
   (:var mv24503 :isa regulate :agent mv24497 :object mv24502 :raw-text "regulate")
   (:var mv24497 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24502 :isa gene :has-determiner "THE" :expresses mv24498 :raw-text "gene")
   (:var mv24498 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("How does MAP3k7 affect CXCL10?"
   (:var mv24509 :isa affect :manner mv24507 :agent mv24505 :object mv24506 :present "PRESENT"
    :raw-text "affect")
   (:var mv24507 :isa how)
   (:var mv24505 :isa protein :raw-text "MAP3k7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24506 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What are the paths between TNF and CXCL10?"
   (:var mv24512 :isa be :subject mv24511 :predicate mv24522 :present "PRESENT")
   (:var mv24511 :isa what)
   (:var mv24522 :isa path :plural t :endpoints mv24519 :has-determiner "THE")
   (:var mv24519 :isa collection :raw-text "TNF and CXCL10" :type protein :number 2 :items
    (mv24517 mv24510))
   (:var mv24517 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24510 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does ERK regulate the expression of CXCL10?"
   (:var mv24532 :isa polar-question :statement mv24530)
   (:var mv24530 :isa regulate :agent mv24525 :affected-process mv24528 :raw-text "regulate")
   (:var mv24525 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24528 :isa gene-transcript-express :object mv24523 :has-determiner "THE" :raw-text
    "expression")
   (:var mv24523 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the expression of CXCL10"
   (:var mv24536 :isa decrease :agent mv24535 :affected-process mv24538 :present "PRESENT"
    :raw-text "decreases")
   (:var mv24535 :isa protein-family :predication mv24534 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24534 :isa active)
   (:var mv24538 :isa gene-transcript-express :object mv24533 :has-determiner "THE" :raw-text
    "expression")
   (:var mv24533 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the amount of CXCL8"
   (:var mv24544 :isa decrease :agent mv24543 :|affected-process-OR-object| mv24546 :present
    "PRESENT" :raw-text "decreases")
   (:var mv24543 :isa protein-family :predication mv24542 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24542 :isa active)
   (:var mv24546 :isa bio-amount :measured-item mv24541 :has-determiner "THE" :raw-text "amount")
   (:var mv24541 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Active ERK decreases the amount of CXCL10"
   (:var mv24552 :isa decrease :agent mv24551 :|affected-process-OR-object| mv24554 :present
    "PRESENT" :raw-text "decreases")
   (:var mv24551 :isa protein-family :predication mv24550 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24550 :isa active)
   (:var mv24554 :isa bio-amount :measured-item mv24549 :has-determiner "THE" :raw-text "amount")
   (:var mv24549 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("NG25 inhibits the activity of MAP3K7"
   (:var mv24559 :isa inhibit :agent mv24557 :affected-process mv24561 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv24557 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv24561 :isa bio-activity :participant mv24558 :has-determiner "THE" :raw-text "activity")
   (:var mv24558 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Does NG25 decrease the CXCL8 in the model?"
   (:var mv24575 :isa polar-question :statement mv24573)
   (:var mv24573 :isa decrease :agent mv24564 :object mv24565 :raw-text "decrease")
   (:var mv24564 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv24565 :isa protein :has-determiner "THE" :raw-text "CXCL8" :uid "UP:P10145" :name
    "IL8_HUMAN"))
  ("Does NG25 decrease CXCL10 in the model?" (:var mv24586 :isa polar-question :statement mv24584)
   (:var mv24584 :isa decrease :agent mv24576 :object mv24577 :raw-text "decrease")
   (:var mv24576 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv24577 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("TNF activates NFkappaB"
   (:var mv24588 :isa bio-activate :agent mv24587 :object mv24589 :present "PRESENT" :raw-text
    "activates")
   (:var mv24587 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24589 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB"))
  ("I want to find out how tofacitinib decreases IL2"
   (:var mv24595 :isa want :agent mv24592 :theme mv24606 :present "PRESENT")
   (:var mv24592 :isa interlocutor :name "speaker")
   (:var mv24606 :isa find-out :agent mv24592 :statement mv24603)
   (:var mv24603 :isa wh-question :statement mv24602 :var nil :wh how)
   (:var mv24602 :isa decrease :agent mv24601 :object mv24591 :present "PRESENT" :raw-text
    "decreases")
   (:var mv24601 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv24591 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in BT20 cells"
   (:var mv24611 :isa want :agent mv24608 :theme mv24628 :present "PRESENT")
   (:var mv24608 :isa interlocutor :name "speaker")
   (:var mv24628 :isa find-out :agent mv24608 :statement mv24625)
   (:var mv24625 :isa wh-question :statement mv24618 :var nil :wh how)
   (:var mv24618 :isa decrease :agent mv24617 :object mv24619 :present "PRESENT" :raw-text
    "decreases")
   (:var mv24617 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv24619 :isa protein :cell-type mv24623 :raw-text "FOS" :uid "UP:P01100" :name
    "FOS_HUMAN")
   (:var mv24623 :isa cell-type :plural t :cell-line mv24607)
   (:var mv24607 :isa cell-line :name "BT-20" :uid "CVCL:0178"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells"
   (:var mv24634 :isa want :agent mv24631 :theme mv24650 :present "PRESENT")
   (:var mv24631 :isa interlocutor :name "speaker")
   (:var mv24650 :isa find-out :agent mv24631 :statement mv24647)
   (:var mv24647 :isa wh-question :statement mv24640 :var nil :wh how)
   (:var mv24640 :isa bio-activate :agent mv24629 :object mv24641 :present "PRESENT" :raw-text
    "activates")
   (:var mv24629 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv24641 :isa protein :cell-type mv24645 :raw-text "JUN" :uid "UP:P05412" :name
    "JUN_HUMAN")
   (:var mv24645 :isa cell-type :plural t :cell-line mv24630)
   (:var mv24630 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Does MEK phosphorylate ERK?" (:var mv24656 :isa polar-question :statement mv24655)
   (:var mv24655 :isa phosphorylate :agent mv24652 :substrate mv24654 :raw-text "phosphorylate")
   (:var mv24652 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv24654 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does STAT3 inhibit the c-fos gene?" (:var mv24664 :isa polar-question :statement mv24663)
   (:var mv24663 :isa inhibit :agent mv24657 :object mv24662 :raw-text "inhibit")
   (:var mv24657 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv24662 :isa gene :has-determiner "THE" :expresses mv24658 :raw-text "gene")
   (:var mv24658 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 stimulate the c-fos gene?" (:var mv24672 :isa polar-question :statement mv24671)
   (:var mv24671 :isa stimulate :agent mv24665 :object mv24670 :raw-text "stimulate")
   (:var mv24665 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv24670 :isa gene :has-determiner "THE" :expresses mv24666 :raw-text "gene")
   (:var mv24666 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
   (:var mv24677 :isa want :agent mv24674 :theme mv24696 :present "PRESENT")
   (:var mv24674 :isa interlocutor :name "speaker")
   (:var mv24696 :isa find-out :agent mv24674 :statement mv24693)
   (:var mv24693 :isa wh-question :statement mv24684 :var nil :wh how)
   (:var mv24684 :isa decrease :agent mv24683 :object mv24685 :present "PRESENT" :raw-text
    "decreases")
   (:var mv24683 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv24685 :isa protein :cell-type mv24691 :raw-text "FOS" :uid "UP:P01100" :name
    "FOS_HUMAN")
   (:var mv24691 :isa cell-type :plural t :cell-line mv24673 :associated-disease mv24687)
   (:var mv24673 :isa cell-line :name "SK-MEL-133" :uid "CVCL:6082") (:var mv24687 :isa melanoma))
  ("Is ERK a transcription factor?" (:var mv24701 :isa polar-question :statement mv24698)
   (:var mv24698 :isa be :subject mv24699 :predicate mv24697)
   (:var mv24699 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24697 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("List all the genes regulated by elk1 and srf."
   (:var mv24703 :isa list :theme mv24714 :present "PRESENT")
   (:var mv24714 :isa gene :plural t :predication mv24708 :quantifier mv24704 :has-determiner "THE"
    :raw-text "genes")
   (:var mv24708 :isa regulate :object mv24714 :agent mv24712 :past "PAST" :raw-text "regulated")
   (:var mv24712 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv24702 mv24711))
   (:var mv24702 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv24711 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv24704 :isa all :word "all"))
  ("List some of the genes regulated by elk1 and srf."
   (:var mv24718 :isa list :theme mv24732 :present "PRESENT")
   (:var mv24732 :isa gene :plural t :predication mv24724 :quantifier mv24719 :has-determiner "THE"
    :raw-text "genes")
   (:var mv24724 :isa regulate :object mv24732 :agent mv24728 :past "PAST" :raw-text "regulated")
   (:var mv24728 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv24717 mv24727))
   (:var mv24717 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv24727 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv24719 :isa some :word "some"))
  ("Show me the  mutations of TP53 and BRAF in ovarian cancer."
   (:var mv24737 :isa show :|statement-OR-theme| mv24751 :beneficiary mv24738 :present "PRESENT")
   (:var mv24751 :isa mutation :plural t :context mv24736 :object mv24746 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv24736 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv24746 :isa collection :raw-text "TP53 and BRAF" :type protein :number 2 :items
    (mv24735 mv24744))
   (:var mv24735 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv24744 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv24738 :isa interlocutor :name "speaker"))
  ("What are the mutations of TP53 and BRAF in ovarian cancer?"
   (:var mv24755 :isa be :subject mv24754 :predicate mv24768 :present "PRESENT")
   (:var mv24754 :isa what)
   (:var mv24768 :isa mutation :plural t :context mv24753 :object mv24763 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv24753 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv24763 :isa collection :raw-text "TP53 and BRAF" :type protein :number 2 :items
    (mv24752 mv24761))
   (:var mv24752 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv24761 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 for breast cancer?"
   (:var mv24773 :isa be :subject mv24772 :predicate mv24783 :present "PRESENT")
   (:var mv24772 :isa what)
   (:var mv24783 :isa gene :disease mv24771 :has-determiner "THE" :predication mv24769 :raw-text
    "genes")
   (:var mv24771 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv24769 :isa mutual-exclusivity :alternative mv24770)
   (:var mv24770 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 in breast cancer?"
   (:var mv24788 :isa be :subject mv24787 :predicate mv24798 :present "PRESENT")
   (:var mv24787 :isa what)
   (:var mv24798 :isa gene :disease mv24786 :has-determiner "THE" :predication mv24784 :raw-text
    "genes")
   (:var mv24786 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv24784 :isa mutual-exclusivity :alternative mv24785)
   (:var mv24785 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN"))
  ("What downregulates it?"
   (:var mv24800 :isa downregulate :|agent-OR-cause| mv24799 :|affected-process-OR-object| mv24801
    :present "PRESENT" :raw-text "downregulates")
   (:var mv24799 :isa what) (:var mv24801 :isa pronoun/inanimate :word "it"))
  ("What genes have strong evidence of being regulated by mir-122-5p?"
   (:var mv24806 :isa have :possessor mv24813 :thing-possessed mv24808 :present "PRESENT")
   (:var mv24813 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv24808 :isa evidence :fact mv24811 :predication mv24807)
   (:var mv24811 :isa regulate :agent mv24802 :progressive mv24810 :raw-text "regulated")
   (:var mv24802 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv24810 :isa be) (:var mv24807 :isa strong))
  ("What increases the amount of myc"
   (:var mv24819 :isa increase :|agent-OR-cause| mv24816 :|affected-process-OR-object| mv24821
    :present "PRESENT" :raw-text "increases")
   (:var mv24816 :isa what)
   (:var mv24821 :isa bio-amount :measured-item mv24823 :has-determiner "THE" :raw-text "amount")
   (:var mv24823 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What inhibits fzd8?"
   (:var mv24827 :isa inhibit :|agent-OR-cause| mv24826 :object mv24825 :present "PRESENT"
    :raw-text "inhibits")
   (:var mv24826 :isa what)
   (:var mv24825 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
   (:var mv24831 :isa be :subject mv24830 :predicate mv24843 :present "PRESENT")
   (:var mv24830 :isa what) (:var mv24843 :isa quality-predicate :item mv24841 :attribute mv24837)
   (:var mv24841 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv24828 mv24839 mv24829))
   (:var mv24828 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv24839 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv24829 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv24837 :isa location-of :has-determiner "THE" :predication mv24835 :modifier mv24836)
   (:var mv24835 :isa likely :comparative mv24833)
   (:var mv24833 :isa superlative-quantifier :name "most")
   (:var mv24836 :isa cellular :name "cellular"))
  ("What is the most likely cellular location of AKT1?"
   (:var mv24846 :isa be :subject mv24845 :predicate mv24855 :present "PRESENT")
   (:var mv24845 :isa what) (:var mv24855 :isa quality-predicate :item mv24844 :attribute mv24852)
   (:var mv24844 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv24852 :isa location-of :has-determiner "THE" :predication mv24850 :modifier mv24851)
   (:var mv24850 :isa likely :comparative mv24848)
   (:var mv24848 :isa superlative-quantifier :name "most")
   (:var mv24851 :isa cellular :name "cellular"))
  ("What is the mutation significance of TP53 in lung cancer?"
   (:var mv24859 :isa be :subject mv24858 :predicate mv24862 :present "PRESENT")
   (:var mv24858 :isa what)
   (:var mv24862 :isa significance :context mv24857 :agent mv24856 :has-determiner "THE" :modifier
    mv24861)
   (:var mv24857 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv24856 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv24861 :isa mutation :raw-text "mutation"))
  ("Which of those are regulated by tp53?"
   (:var mv24874 :isa regulate :|affected-process-OR-object| mv24870 :agent mv24867 :present
    "PRESENT" :raw-text "regulated")
   (:var mv24870 :isa those :quantifier mv24868 :word "those") (:var mv24868 :isa which)
   (:var mv24867 :isa protein :raw-text "tp53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("Which of those genes are in the MAPK signaling pathway?"
   (:var mv24894 :isa copular-predication-of-pp :item mv24891 :value mv24893 :prep "IN" :predicate
    mv24883)
   (:var mv24891 :isa gene :plural t :quantifier mv24878 :has-determiner "THOSE" :raw-text "genes")
   (:var mv24878 :isa which)
   (:var mv24893 :isa gene :plural t :context mv24877 :quantifier mv24878 :has-determiner "THOSE"
    :raw-text "genes")
   (:var mv24877 :isa signaling-pathway :has-determiner "THE" :modifier mv24886 :raw-text
    "signaling pathway")
   (:var mv24886 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv24883 :isa be :present "PRESENT"))
  ("Which of these are in the il-12 pathway?"
   (:var mv24905 :isa copular-predication-of-pp :item mv24899 :value mv24903 :prep mv24901
    :predicate mv24900)
   (:var mv24899 :isa these :quantifier mv24897 :word "these") (:var mv24897 :isa which)
   (:var mv24903 :isa pathway :has-determiner "THE" :modifier mv24896 :raw-text "pathway")
   (:var mv24896 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv24901 :isa in :word "in") (:var mv24900 :isa be :present "PRESENT"))
  ("Which of them are expressed in liver?"
   (:var mv24914 :isa gene-transcript-express :object mv24909 :organ mv24913 :present "PRESENT"
    :raw-text "expressed")
   (:var mv24909 :isa pronoun/plural :quantifier mv24907 :word "them") (:var mv24907 :isa which)
   (:var mv24913 :isa liver))
  ("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
   (:var mv24929 :isa regulate :|affected-process-OR-object| mv24921 :agent mv24928 :present
    "PRESENT" :superlative mv24923 :adverb mv24924 :raw-text "regulated")
   (:var mv24921 :isa pronoun/plural :quantifier mv24919 :word "them") (:var mv24919 :isa which)
   (:var mv24928 :isa collection :raw-text "miR-335-5p and miR-155-5p" :type micro-rna :number 2
    :items (mv24917 mv24918))
   (:var mv24917 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv24918 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv24923 :isa superlative-quantifier :name "most")
   (:var mv24924 :isa frequently :name "frequently"))
  ("What transcription factors target SMURF2?"
   (:var mv24937 :isa target :agent mv24938 :object mv24934 :present "PRESENT" :raw-text "target")
   (:var mv24938 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv24934 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which of those target frizzled8?"
   (:var mv24944 :isa target :|agent-OR-cause| mv24942 :object mv24939 :present "PRESENT" :raw-text
    "target")
   (:var mv24942 :isa those :quantifier mv24940 :word "those") (:var mv24940 :isa which)
   (:var mv24939 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is Selumetinib?"
   (:var mv24947 :isa be :subject mv24946 :predicate mv24948 :present "PRESENT")
   (:var mv24946 :isa what)
   (:var mv24948 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What is MAPK3?" (:var mv24951 :isa be :subject mv24950 :predicate mv24949 :present "PRESENT")
   (:var mv24950 :isa what)
   (:var mv24949 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does it do?" (:var mv24957 :isa do :patient mv24952 :present "PRESENT")
   (:var mv24952 :isa what))
  ("Is there an inhibitor of ERK1?" (:var mv24967 :isa polar-question :statement mv24965)
   (:var mv24965 :isa there-exists :value mv24963 :predicate mv24960)
   (:var mv24963 :isa inhibitor :protein mv24958 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv24958 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv24960 :isa syntactic-there))
  ("Name some drugs that inhibit AKT1."
   (:var mv24969 :isa name-something :patient mv24978 :present "PRESENT")
   (:var mv24978 :isa drug :plural t :predication mv24976 :quantifier mv24972 :raw-text "drugs")
   (:var mv24976 :isa inhibit :agent mv24978 :that-rel t :object mv24968 :present "PRESENT"
    :raw-text "inhibit")
   (:var mv24968 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv24972 :isa some :word "some"))
  ("Are there any Map2K1 inhibitors?" (:var mv24989 :isa polar-question :statement mv24986)
   (:var mv24986 :isa there-exists :value mv24988 :predicate mv24981)
   (:var mv24988 :isa inhibitor :plural t :quantifier mv24983 :protein mv24979 :raw-text
    "inhibitors")
   (:var mv24983 :isa any :word "any")
   (:var mv24979 :isa protein :raw-text "Map2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv24981 :isa syntactic-there))
  ("Are there targets of Selumetinib?" (:var mv25001 :isa polar-question :statement mv24998)
   (:var mv24998 :isa there-exists :value mv25000 :predicate mv24991)
   (:var mv25000 :isa target-protein :plural t :treatment mv24997 :raw-text "targets")
   (:var mv24997 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv24991 :isa syntactic-there))
  ("What does Selumetinib inhibit?"
   (:var mv25005 :isa inhibit :|affected-process-OR-object| mv25002 :agent mv25004 :present
    "PRESENT" :raw-text "inhibit")
   (:var mv25002 :isa what)
   (:var mv25004 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What does Selumetinib target?"
   (:var mv25010 :isa target :|affected-process-OR-object| mv25006 :agent mv25008 :present
    "PRESENT" :raw-text "target")
   (:var mv25006 :isa what)
   (:var mv25008 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Does Vemurafenib target BRAF?" (:var mv25017 :isa polar-question :statement mv25016)
   (:var mv25016 :isa target :agent mv25012 :object mv25015 :raw-text "target")
   (:var mv25012 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv25015 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some targets for treating pancreatic cancer?"
   (:var mv25020 :isa be :subject mv25019 :predicate mv25029 :present "PRESENT")
   (:var mv25019 :isa what)
   (:var mv25029 :isa target-protein :plural t :quantifier mv25021 :treatment mv25026 :raw-text
    "targets")
   (:var mv25021 :isa some :word "some")
   (:var mv25026 :isa treatment :disease mv25018 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv25018 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some targets for pancreatic cancer?"
   (:var mv25032 :isa be :subject mv25031 :predicate mv25040 :present "PRESENT")
   (:var mv25031 :isa what)
   (:var mv25040 :isa target-protein :plural t :quantifier mv25033 :disease mv25030 :raw-text
    "targets")
   (:var mv25033 :isa some :word "some")
   (:var mv25030 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What targets could lead to the development of pancreatic cancer?"
   (:var mv25047 :isa lead :agent mv25052 :theme mv25050 :modal mv25046 :raw-text "lead")
   (:var mv25052 :isa target-protein :plural t :has-determiner "WHAT" :raw-text "targets")
   (:var mv25050 :isa development :disease mv25041 :has-determiner "THE" :raw-text "development")
   (:var mv25041 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv25046 :isa could))
  ("What proteins could lead to the development of pancreatic cancer?"
   (:var mv25060 :isa lead :agent mv25065 :theme mv25063 :modal mv25059 :raw-text "lead")
   (:var mv25065 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv25063 :isa development :disease mv25055 :has-determiner "THE" :raw-text "development")
   (:var mv25055 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv25059 :isa could))
  ("What mutated genes could lead to pancreatic cancer?"
   (:var mv25074 :isa lead :agent mv25077 :theme mv25068 :modal mv25073 :raw-text "lead")
   (:var mv25077 :isa gene :plural t :has-determiner "WHAT" :predication mv25070 :raw-text "genes")
   (:var mv25070 :isa mutation :object mv25077 :raw-text "mutated")
   (:var mv25068 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv25073 :isa could))
  ("What is the top gene mutation that leads to pancreatic cancer?"
   (:var mv25081 :isa be :subject mv25080 :predicate mv25085 :present "PRESENT")
   (:var mv25080 :isa what)
   (:var mv25085 :isa mutation :predication mv25087 :has-determiner "THE" :modifier mv25083 :object
    mv25084 :raw-text "mutation")
   (:var mv25087 :isa lead :agent mv25085 :that-rel t :theme mv25079 :present "PRESENT" :raw-text
    "leads")
   (:var mv25079 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv25083 :isa top-qua-location) (:var mv25084 :isa gene :raw-text "gene"))
  ("I would like to find a treatement for pancreatic cancer."
   (:var mv25096 :isa like :agent mv25091 :modal mv25094)
   (:var mv25091 :isa interlocutor :name "speaker") (:var mv25094 :isa would))
  ("What drug could I use to treat pancreatic cancer?"
   (:var mv25117 :isa bio-use :patient mv25107 :modal mv25108 :agent mv25109 :theme mv25116
    :present "PRESENT" :raw-text "use")
   (:var mv25107 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv25108 :isa could)
   (:var mv25109 :isa interlocutor :name "speaker")
   (:var mv25116 :isa treatment :disease mv25105 :raw-text "treat")
   (:var mv25105 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some drugs for treating pancreatic cancer?"
   (:var mv25120 :isa be :subject mv25119 :predicate mv25128 :present "PRESENT")
   (:var mv25119 :isa what)
   (:var mv25128 :isa drug :plural t :treatment mv25125 :quantifier mv25121 :raw-text "drugs")
   (:var mv25125 :isa treatment :disease mv25118 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv25118 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv25121 :isa some :word "some"))
  ("I'd like to find a treatement for pancreatic cancer."
   (:var mv25135 :isa like :agent mv25131 :modal mv25142)
   (:var mv25131 :isa interlocutor :name "speaker") (:var mv25142 :isa would))
  ("How can i treat pancreatic cancer?" (:var mv25146 :isa how))
  ("Does MEK act on ERK?" (:var mv25156 :isa polar-question :statement mv25154)
   (:var mv25154 :isa bio-act :agent mv25150 :acted-on mv25153 :raw-text "act")
   (:var mv25150 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25153 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Let's build a model"
   (:var mv25161 :isa explicit-suggestion :suggestion mv25158 :marker let-as-directive)
   (:var mv25158 :isa build :artifact mv25160 :present "PRESENT")
   (:var mv25160 :isa model :has-determiner "A"))
  ("Mek activates MAPK3"
   (:var mv25164 :isa bio-activate :agent mv25163 :object mv25162 :present "PRESENT" :raw-text
    "activates")
   (:var mv25163 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25162 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("HRAS activates RAF."
   (:var mv25166 :isa bio-activate :agent mv25165 :object mv25167 :present "PRESENT" :raw-text
    "activates")
   (:var mv25165 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv25167 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("Remove the fact that hras activates ras"
   (:var mv25168 :isa remove :object mv25175 :present "PRESENT" :raw-text "Remove")
   (:var mv25175 :isa fact :statement mv25173 :has-determiner "THE")
   (:var mv25173 :isa bio-activate :agent mv25172 :object mv25174 :present "PRESENT" :raw-text
    "activates")
   (:var mv25172 :isa protein :raw-text "hras" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv25174 :isa protein-family :raw-text "ras" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("Can you tell me what is in the model?" (:var mv25187 :isa polar-question :statement mv25178)
   (:var mv25178 :isa tell :agent mv25177 :theme mv25186 :theme mv25179 :modal "CAN")
   (:var mv25177 :isa interlocutor :name "hearer")
   (:var mv25186 :isa copular-predication-of-pp :item mv25180 :value mv25184 :prep mv25182
    :predicate mv25181)
   (:var mv25180 :isa what) (:var mv25184 :isa model :has-determiner "THE")
   (:var mv25182 :isa in :word "in") (:var mv25181 :isa be :modal "CAN")
   (:var mv25179 :isa interlocutor :name "speaker"))
  ("Summarize the model." (:var mv25191 :isa summarize :statement mv25190 :present "PRESENT")
   (:var mv25190 :isa model :has-determiner "THE"))
  ("Summarize the current model."
   (:var mv25196 :isa summarize :statement mv25195 :present "PRESENT")
   (:var mv25195 :isa model :has-determiner "THE" :predication mv25194)
   (:var mv25194 :isa current))
  ("What phosphorylates BRAF?"
   (:var mv25198 :isa phosphorylate :|agent-OR-cause| mv25197 :substrate mv25199 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv25197 :isa what)
   (:var mv25199 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Vemurafenib binds BRAF."
   (:var mv25201 :isa binding :binder mv25200 :direct-bindee mv25202 :present "PRESENT" :raw-text
    "binds")
   (:var mv25200 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv25202 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Phosphorylated MAP2K1 is activated."
   (:var mv25207 :isa bio-activate :object mv25203 :present "PRESENT" :raw-text "activated")
   (:var mv25203 :isa protein :predication mv25204 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv25204 :isa phosphorylate :substrate mv25203 :raw-text "Phosphorylated"))
  ("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
   (:var mv25211 :isa dephosphorylate :agent mv25208 :substrate mv25209 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv25208 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv25209 :isa protein :predication mv25217 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv25217 :isa binding :direct-bindee mv25209 :that-rel t :bindee mv25210 :present "PRESENT"
    :negation mv25214 :raw-text "bound")
   (:var mv25210 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv25214 :isa not :word "not"))
  ("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
   (:var mv25228 :isa phosphorylate :agent mv25219 :substrate mv25221 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv25219 :isa protein :predication mv25229 :predication mv25222 :raw-text "MAP2K1" :uid
    "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv25229 :isa binding :direct-bindee mv25219 :that-rel t :bindee mv25220 :present "PRESENT"
    :negation mv25225 :raw-text "bound")
   (:var mv25220 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv25225 :isa not :word "not") (:var mv25222 :isa active)
   (:var mv25221 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Phosphorylated ERK2 is activated."
   (:var mv25235 :isa bio-activate :object mv25231 :present "PRESENT" :raw-text "activated")
   (:var mv25231 :isa protein :predication mv25232 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv25232 :isa phosphorylate :substrate mv25231 :raw-text "Phosphorylated"))
  ("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
   (:var mv25239 :isa dephosphorylate :agent mv25236 :substrate mv25237 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv25236 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv25237 :isa protein :predication mv25245 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv25245 :isa binding :direct-bindee mv25237 :that-rel t :bindee mv25238 :present "PRESENT"
    :negation mv25242 :raw-text "bound")
   (:var mv25238 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv25242 :isa not :word "not"))
  ("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
   (:var mv25260 :isa phosphorylate :agent mv25248 :substrate mv25247 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv25248 :isa protein :predication mv25263 :mutation mv25262 :raw-text "BRAF" :uid
    "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25263 :isa binding :direct-bindee mv25248 :that-rel t :bindee mv25259 :present "PRESENT"
    :negation mv25256 :raw-text "bound")
   (:var mv25259 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv25256 :isa not :word "not")
   (:var mv25262 :isa point-mutated-protein :position mv25251 :new-amino-acid mv25253
    :original-amino-acid mv25249)
   (:var mv25251 :isa number :value 600)
   (:var mv25253 :isa amino-acid :name "glutamic acid" :letter "E")
   (:var mv25249 :isa amino-acid :name "valine" :letter "V")
   (:var mv25247 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Phosphorylated MAPK1 is active."
   (:var mv25269 :isa copular-predication :item mv25265 :value mv25268 :predicate mv25267)
   (:var mv25265 :isa protein :predication mv25266 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv25266 :isa phosphorylate :substrate mv25265 :raw-text "Phosphorylated")
   (:var mv25268 :isa active) (:var mv25267 :isa be :present "PRESENT"))
  ("PDK1 phosphorylates AKT1."
   (:var mv25272 :isa phosphorylate :agent mv25270 :substrate mv25271 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv25270 :isa protein :raw-text "PDK1" :uid "UP:O15530" :name "PDPK1_HUMAN")
   (:var mv25271 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated AKT1 to the top"
   (:var mv25282 :isa explicit-suggestion :suggestion mv25276 :marker let-as-directive)
   (:var mv25276 :isa move-to :goal mv25280 :theme mv25274 :present "PRESENT")
   (:var mv25280 :isa top-qua-location :has-determiner "THE")
   (:var mv25274 :isa protein :predication mv25277 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv25277 :isa phosphorylate :substrate mv25274 :raw-text "phosphorylated"))
  ("Let's move phosphorylated AKT1 on top"
   (:var mv25291 :isa explicit-suggestion :suggestion mv25286 :marker let-as-directive)
   (:var mv25286 :isa move-to :|at-relative-location-OR-goal| mv25289 :theme mv25284 :present
    "PRESENT")
   (:var mv25289 :isa top-qua-location)
   (:var mv25284 :isa protein :predication mv25287 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv25287 :isa phosphorylate :substrate mv25284 :raw-text "phosphorylated"))
  ("show AKT1 on top"
   (:var mv25293 :isa show :at-relative-location mv25295 :|statement-OR-theme| mv25292 :present
    "PRESENT")
   (:var mv25295 :isa top-qua-location)
   (:var mv25292 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's highlight upstream of AKT1"
   (:var mv25304 :isa explicit-suggestion :suggestion mv25299 :marker let-as-directive)
   (:var mv25299 :isa highlight :theme mv25300 :present "PRESENT")
   (:var mv25300 :isa upstream-segment :pathwaycomponent mv25298 :raw-text "upstream")
   (:var mv25298 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move nucleus elements to the top"
   (:var mv25316 :isa explicit-suggestion :suggestion mv25307 :marker let-as-directive)
   (:var mv25307 :isa move-to :goal mv25313 :theme mv25314 :present "PRESENT")
   (:var mv25313 :isa top-qua-location :has-determiner "THE")
   (:var mv25314 :isa element :plural t :modifier mv25308)
   (:var mv25308 :isa nucleus :raw-text "nucleus"))
  ("What are the common downstreams of AKT1 and  BRAF?"
   (:var mv25319 :isa be :subject mv25318 :predicate mv25331 :present "PRESENT")
   (:var mv25318 :isa what)
   (:var mv25331 :isa downstream-segment :plural t :pathwaycomponent mv25327 :has-determiner "THE"
    :predication mv25321 :raw-text "downstreams")
   (:var mv25327 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv25317 mv25326))
   (:var mv25317 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv25326 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25321 :isa common))
  ("Are there common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv25348 :isa polar-question :statement mv25343)
   (:var mv25343 :isa there-exists :value mv25347 :predicate mv25335)
   (:var mv25347 :isa upstream-segment :plural t :pathwaycomponent mv25344 :predication mv25337
    :raw-text "upstreams")
   (:var mv25344 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv25332 mv25341 mv25333))
   (:var mv25332 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv25341 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25333 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv25337 :isa common) (:var mv25335 :isa syntactic-there))
  ("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
   (:var mv25353 :isa be :subject mv25352 :predicate mv25367 :present "PRESENT")
   (:var mv25352 :isa what)
   (:var mv25367 :isa regulator :plural t :theme mv25362 :has-determiner "THE" :predication mv25355
    :context mv25356 :raw-text "regulators")
   (:var mv25362 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv25349 mv25350 mv25351))
   (:var mv25349 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv25350 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv25351 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv25355 :isa common) (:var mv25356 :isa upstream-segment :raw-text "upstream"))
  ("What are common downstream regulators of MMP3 and SERPINE1?"
   (:var mv25371 :isa be :subject mv25370 :predicate mv25383 :present "PRESENT")
   (:var mv25370 :isa what)
   (:var mv25383 :isa regulator :plural t :theme mv25379 :predication mv25372 :context mv25373
    :raw-text "regulators")
   (:var mv25379 :isa collection :raw-text "MMP3 and SERPINE1" :type protein :number 2 :items
    (mv25368 mv25369))
   (:var mv25368 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv25369 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv25372 :isa common) (:var mv25373 :isa downstream-segment :raw-text "downstream"))
  ("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
   (:var mv25390 :isa be :subject mv25389 :predicate mv25400 :present "PRESENT")
   (:var mv25389 :isa what)
   (:var mv25400 :isa protein-family :plural t :molecule-type mv25396 :predication mv25391 :context
    mv25392 :raw-text "transcriptional regulators" :uid "XFAM:PF02082" :name
    "transcriptional regulator")
   (:var mv25396 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv25386 mv25387 mv25388))
   (:var mv25386 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv25387 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv25388 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv25391 :isa common) (:var mv25392 :isa upstream-segment :raw-text "upstream"))
  ("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
   (:var mv25404 :isa be :subject mv25403 :predicate mv25418 :present "PRESENT")
   (:var mv25403 :isa what)
   (:var mv25418 :isa mutation :plural t :context mv25402 :object mv25413 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv25402 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv25413 :isa collection :raw-text "PTEN, TP53 and BRAF" :type protein :number 3 :items
    (mv25409 mv25401 mv25411))
   (:var mv25409 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv25401 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv25411 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the mutation frequency of TP53 in ovarian cancer?"
   (:var mv25422 :isa be :subject mv25421 :predicate mv25425 :present "PRESENT")
   (:var mv25421 :isa what)
   (:var mv25425 :isa frequency :context mv25420 :measured-item mv25419 :has-determiner "THE"
    :measured-item mv25424 :raw-text "frequency")
   (:var mv25420 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv25419 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv25424 :isa mutation :raw-text "mutation"))
  ("Which genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv25442 :isa copular-predication :item mv25439 :value mv25430 :predicate mv25436)
   (:var mv25439 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv25430 :isa mutual-exclusivity :disease mv25432 :alternative mv25431)
   (:var mv25432 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv25431 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv25436 :isa be :present "PRESENT"))
  ("Which genes are mutually exclusive with CDH1 in breast cancer?"
   (:var mv25455 :isa copular-predication :item mv25452 :value mv25443 :predicate mv25449)
   (:var mv25452 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv25443 :isa mutual-exclusivity :disease mv25445 :alternative mv25444)
   (:var mv25445 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv25444 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv25449 :isa be :present "PRESENT"))
  ("What is the cellular location of akt1?"
   (:var mv25458 :isa be :subject mv25457 :predicate mv25464 :present "PRESENT")
   (:var mv25457 :isa what) (:var mv25464 :isa quality-predicate :item mv25456 :attribute mv25461)
   (:var mv25456 :isa protein :raw-text "akt1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv25461 :isa location-of :has-determiner "THE" :modifier mv25460)
   (:var mv25460 :isa cellular :name "cellular"))
  ("How does MAPK regulate BRAF?"
   (:var mv25468 :isa regulate :manner mv25465 :agent mv25467 :object mv25469 :present "PRESENT"
    :raw-text "regulate")
   (:var mv25465 :isa how)
   (:var mv25467 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv25469 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is BRAF?" (:var mv25471 :isa be :subject mv25470 :predicate mv25472 :present "PRESENT")
   (:var mv25470 :isa what)
   (:var mv25472 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is BRAF a member of the RAF family?" (:var mv25484 :isa polar-question :statement mv25473)
   (:var mv25473 :isa be :subject mv25474 :predicate mv25476)
   (:var mv25474 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25476 :isa member :set mv25482 :has-determiner "A")
   (:var mv25482 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What genes are in RAS?"
   (:var mv25496 :isa copular-predication-of-pp :item mv25491 :value mv25495 :prep "IN" :predicate
    mv25488)
   (:var mv25491 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv25495 :isa gene :plural t :in-family mv25490 :has-determiner "WHAT" :raw-text "genes")
   (:var mv25490 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663")
   (:var mv25488 :isa be :present "PRESENT"))
  ("What genes are in the RAF family?"
   (:var mv25513 :isa copular-predication-of-pp :item mv25507 :value mv25512 :prep "IN" :predicate
    mv25501)
   (:var mv25507 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv25512 :isa gene :plural t :in-family mv25508 :has-determiner "WHAT" :raw-text "genes")
   (:var mv25508 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv25501 :isa be :present "PRESENT"))
  ("What are some other names for BRAF?"
   (:var mv25516 :isa be :subject mv25515 :predicate mv25529 :present "PRESENT")
   (:var mv25515 :isa what)
   (:var mv25529 :isa has-name :plural t :item mv25525 :quantifier mv25517 :modifier mv25518)
   (:var mv25525 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25517 :isa some :word "some") (:var mv25518 :isa other :name "other"))
  ("What are synonyms for ERK?"
   (:var mv25531 :isa be :subject mv25530 :predicate mv25537 :present "PRESENT")
   (:var mv25530 :isa what) (:var mv25537 :isa has-synonym :plural t :item mv25535)
   (:var mv25535 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors are shared by CXCL8, CXCL10, and IL2?"
   (:var mv25550 :isa share :object mv25549 :participant mv25548 :present "PRESENT" :raw-text
    "shared")
   (:var mv25549 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv25548 :isa collection :raw-text "CXCL8, CXCL10, and IL2" :type protein :number 3 :items
    (mv25540 mv25541 mv25542))
   (:var mv25540 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv25541 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv25542 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What are the paths between BRAF and AKT1?"
   (:var mv25554 :isa be :subject mv25553 :predicate mv25564 :present "PRESENT")
   (:var mv25553 :isa what)
   (:var mv25564 :isa path :plural t :endpoints mv25561 :has-determiner "THE")
   (:var mv25561 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv25559 mv25552))
   (:var mv25559 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25552 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Is SMAD2 a transcription factor?" (:var mv25569 :isa polar-question :statement mv25567)
   (:var mv25567 :isa be :subject mv25565 :predicate mv25566)
   (:var mv25565 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv25566 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Remove the fact that active MEK activates ERK from the model."
   (:var mv25570 :isa remove :object mv25582 :present "PRESENT" :raw-text "Remove")
   (:var mv25582 :isa fact :statement mv25576 :has-determiner "THE")
   (:var mv25576 :isa bio-activate :agent mv25575 :object mv25577 :present "PRESENT" :raw-text
    "activates")
   (:var mv25575 :isa protein-family :predication mv25574 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25574 :isa active)
   (:var mv25577 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active MEK activates ERK"
   (:var mv25585 :isa bio-activate :agent mv25584 :object mv25586 :present "PRESENT" :raw-text
    "activates")
   (:var mv25584 :isa protein-family :predication mv25583 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25583 :isa active)
   (:var mv25586 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is in the model?"
   (:var mv25593 :isa copular-predication-of-pp :item mv25587 :value mv25591 :prep mv25589
    :predicate mv25588)
   (:var mv25587 :isa what) (:var mv25591 :isa model :has-determiner "THE")
   (:var mv25589 :isa in :word "in") (:var mv25588 :isa be :present "PRESENT"))
  ("Is the amount of phosphorylated ERK ever high?"
   (:var mv25604 :isa polar-question :statement mv25603)
   (:var mv25603 :isa copular-predication :item mv25596 :value mv25601 :predicate mv25594)
   (:var mv25596 :isa bio-amount :measured-item mv25599 :has-determiner "THE" :raw-text "amount")
   (:var mv25599 :isa protein-family :predication mv25598 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv25598 :isa phosphorylate :substrate mv25599 :raw-text "phosphorylated")
   (:var mv25601 :isa high :adverb mv25600) (:var mv25600 :isa ever :name "ever")
   (:var mv25594 :isa be))
  ("What genes are mutually exclusive with PTEN for prostate cancer?"
   (:var mv25617 :isa copular-predication :item mv25614 :value mv25605 :predicate mv25610)
   (:var mv25614 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv25605 :isa mutual-exclusivity :disease mv25606 :alternative mv25612)
   (:var mv25606 :isa cancer :name "prostate cancer" :uid "TS-1224")
   (:var mv25612 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv25610 :isa be :present "PRESENT"))
  ("What signaling pathways are shared by SMAD2 and CXCL8?"
   (:var mv25629 :isa share :object mv25628 :participant mv25627 :present "PRESENT" :raw-text
    "shared")
   (:var mv25628 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv25627 :isa collection :raw-text "SMAD2 and CXCL8" :type protein :number 2 :items
    (mv25620 mv25621))
   (:var mv25620 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv25621 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"
   (:var mv25639 :isa regulate :agent mv25642 :object mv25641 :present "PRESENT" :adverb mv25637
    :adverb mv25638 :raw-text "regulate")
   (:var mv25642 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv25641 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv25631 mv25632 mv25633))
   (:var mv25631 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv25632 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv25633 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv25637 :isa superlative-quantifier :name "most")
   (:var mv25638 :isa frequently :name "frequently"))
  ("What is the most likely cellular location of PTEN?"
   (:var mv25644 :isa be :subject mv25643 :predicate mv25654 :present "PRESENT")
   (:var mv25643 :isa what) (:var mv25654 :isa quality-predicate :item mv25652 :attribute mv25650)
   (:var mv25652 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv25650 :isa location-of :has-determiner "THE" :predication mv25648 :modifier mv25649)
   (:var mv25648 :isa likely :comparative mv25646)
   (:var mv25646 :isa superlative-quantifier :name "most")
   (:var mv25649 :isa cellular :name "cellular"))
  ("Is BRAF a kinase?" (:var mv25659 :isa polar-question :statement mv25655)
   (:var mv25655 :isa be :subject mv25656 :predicate mv25658)
   (:var mv25656 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25658 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Can you tell me whether BRAF is a kinase?"
   (:var mv25671 :isa polar-question :statement mv25662)
   (:var mv25662 :isa tell :agent mv25661 :theme mv25670 :theme mv25663 :modal "CAN")
   (:var mv25661 :isa interlocutor :name "hearer")
   (:var mv25670 :isa wh-question :statement mv25667 :wh whether)
   (:var mv25667 :isa be :subject mv25666 :predicate mv25669 :modal "CAN")
   (:var mv25666 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25669 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv25663 :isa interlocutor :name "speaker"))
  ("I want to know if BRAF is a kinase."
   (:var mv25675 :isa want :agent mv25672 :theme mv25685 :present "PRESENT")
   (:var mv25672 :isa interlocutor :name "speaker")
   (:var mv25685 :isa know :agent mv25672 :statement mv25684)
   (:var mv25684 :isa wh-question :statement mv25680 :wh if)
   (:var mv25680 :isa be :subject mv25679 :predicate mv25682 :present "PRESENT")
   (:var mv25679 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25682 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What does BRAF do?" (:var mv25686 :isa what))
  ("What type of protein is BRAF?"
   (:var mv25694 :isa be :subject mv25691 :predicate mv25695 :present "PRESENT")
   (:var mv25691 :isa type :molecule-type mv25693 :has-determiner "WHAT" :raw-text "type")
   (:var mv25693 :isa protein :raw-text "protein")
   (:var mv25695 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the activity of the BRAF protein?"
   (:var mv25698 :isa be :subject mv25697 :predicate mv25700 :present "PRESENT")
   (:var mv25697 :isa what)
   (:var mv25700 :isa bio-activity :participant mv25705 :has-determiner "THE" :raw-text "activity")
   (:var mv25705 :isa protein :has-determiner "THE" :raw-text "BRAF" :uid "UP:P15056" :name
    "BRAF_HUMAN"))
  ("Is BRAF a kinase or a transcription factor?"
   (:var mv25715 :isa polar-question :statement mv25708)
   (:var mv25708 :isa be :subject mv25709 :predicate mv25714)
   (:var mv25709 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25714 :isa collection :raw-text "a kinase or a transcription factor" :type kinase
    :number 2 :items (mv25711 mv25707))
   (:var mv25711 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv25707 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("What proteins are targeted by NG25?"
   (:var mv25724 :isa target :object mv25723 :agent mv25716 :present "PRESENT" :raw-text
    "targeted")
   (:var mv25723 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv25716 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("Name transcription factors shared by FN1, MMP3, and SERPINE1."
   (:var mv25731 :isa name-something :patient mv25727 :present "PRESENT")
   (:var mv25727 :isa transcription-factor :plural t :predication mv25734 :raw-text
    "transcription factors")
   (:var mv25734 :isa share :object mv25727 :participant mv25737 :past "PAST" :raw-text "shared")
   (:var mv25737 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv25728 mv25729 mv25730))
   (:var mv25728 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv25729 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv25730 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN"))
  ("Tell me if STAT3 is a transcription factor"
   (:var mv25742 :isa tell :theme mv25747 :beneficiary mv25743 :present "PRESENT")
   (:var mv25747 :isa wh-question :statement mv25745 :wh if)
   (:var mv25745 :isa be :subject mv25740 :predicate mv25741 :present "PRESENT")
   (:var mv25740 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25741 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor")
   (:var mv25743 :isa interlocutor :name "speaker"))
  ("Show me signaling pathways shared by MAP3K7 and CXCL8."
   (:var mv25752 :isa show :|statement-OR-theme| mv25759 :beneficiary mv25753 :present "PRESENT")
   (:var mv25759 :isa signaling-pathway :plural t :predication mv25754 :raw-text
    "signaling pathways")
   (:var mv25754 :isa share :object mv25759 :participant mv25757 :past "PAST" :raw-text "shared")
   (:var mv25757 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv25750 mv25751))
   (:var mv25750 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv25751 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv25753 :isa interlocutor :name "speaker"))
  ("Give me signaling pathways shared by MAP3K7 and CXCL8"
   (:var mv25764 :isa give :theme mv25771 :beneficiary mv25765 :present "PRESENT")
   (:var mv25771 :isa signaling-pathway :plural t :predication mv25766 :raw-text
    "signaling pathways")
   (:var mv25766 :isa share :object mv25771 :participant mv25769 :past "PAST" :raw-text "shared")
   (:var mv25769 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv25762 mv25763))
   (:var mv25762 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv25763 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv25765 :isa interlocutor :name "speaker"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"
   (:var mv25801 :isa polar-question :statement mv25800)
   (:var mv25800 :isa event-relation :subordinated-event mv25796 :event mv25798)
   (:var mv25796 :isa wh-question :statement mv25783 :wh if)
   (:var mv25783 :isa increase :|agent-OR-cause| mv25781 :|multiplier-OR-cause| mv25793
    :|affected-process-OR-object| mv25785 :present "PRESENT" :raw-text "increase")
   (:var mv25781 :isa interlocutor :name "person-and-machine")
   (:var mv25793 :isa measurement :number mv25790) (:var mv25790 :isa number :value 10)
   (:var mv25785 :isa bio-amount :measured-item mv25787 :has-determiner "THE" :raw-text "amount")
   (:var mv25787 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25798 :isa copular-predication :item mv25774 :value mv25779 :predicate mv25772)
   (:var mv25774 :isa bio-amount :measured-item mv25777 :has-determiner "THE" :raw-text "amount")
   (:var mv25777 :isa protein-family :predication mv25776 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv25776 :isa phosphorylate :substrate mv25777 :raw-text "phosphorylated")
   (:var mv25779 :isa high :adverb mv25778) (:var mv25778 :isa ever :name "ever")
   (:var mv25772 :isa be))
  ("Active MEK phosphorylates ERK"
   (:var mv25804 :isa phosphorylate :agent mv25803 :substrate mv25805 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv25803 :isa protein-family :predication mv25802 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25802 :isa active)
   (:var mv25805 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK ten fold?"
   (:var mv25833 :isa polar-question :statement mv25832)
   (:var mv25832 :isa event-relation :subordinated-event mv25828 :event mv25830)
   (:var mv25828 :isa wh-question :statement mv25817 :wh if)
   (:var mv25817 :isa increase :|agent-OR-cause| mv25815 :level mv25826
    :|affected-process-OR-object| mv25819 :present "PRESENT" :raw-text "increase")
   (:var mv25815 :isa interlocutor :name "person-and-machine")
   (:var mv25826 :isa measurement :number mv25823) (:var mv25823 :isa number :value 10)
   (:var mv25819 :isa bio-amount :measured-item mv25821 :has-determiner "THE" :raw-text "amount")
   (:var mv25821 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25830 :isa copular-predication :item mv25808 :value mv25813 :predicate mv25806)
   (:var mv25808 :isa bio-amount :measured-item mv25811 :has-determiner "THE" :raw-text "amount")
   (:var mv25811 :isa protein-family :predication mv25810 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv25810 :isa phosphorylate :substrate mv25811 :raw-text "phosphorylated")
   (:var mv25813 :isa high :adverb mv25812) (:var mv25812 :isa ever :name "ever")
   (:var mv25806 :isa be))
  ("What are some pathways that affect BRAF?"
   (:var mv25835 :isa be :subject mv25834 :predicate mv25843 :present "PRESENT")
   (:var mv25834 :isa what)
   (:var mv25843 :isa pathway :plural t :predication mv25840 :quantifier mv25836 :raw-text
    "pathways")
   (:var mv25840 :isa affect :agent mv25843 :that-rel t :object mv25841 :present "PRESENT"
    :raw-text "affect")
   (:var mv25841 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25836 :isa some :word "some"))
  ("What are the pathways that affect BRAF"
   (:var mv25845 :isa be :subject mv25844 :predicate mv25853 :present "PRESENT")
   (:var mv25844 :isa what)
   (:var mv25853 :isa pathway :plural t :predication mv25850 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv25850 :isa affect :agent mv25853 :that-rel t :object mv25851 :present "PRESENT"
    :raw-text "affect")
   (:var mv25851 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are regulated by miR-20b-5p, and miR-145-5p?"
   (:var mv25865 :isa regulate :object mv25864 :agent mv25863 :present "PRESENT" :raw-text
    "regulated")
   (:var mv25864 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv25863 :isa collection :raw-text "miR-20b-5p, and miR-145-5p" :type micro-rna :number 2
    :items (mv25854 mv25855))
   (:var mv25854 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv25855 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid
    "MIMAT0000437"))
  ("What are some genes that are regulated by ELK1?"
   (:var mv25869 :isa be :subject mv25868 :predicate mv25880 :present "PRESENT")
   (:var mv25868 :isa what)
   (:var mv25880 :isa gene :plural t :predication mv25878 :quantifier mv25870 :raw-text "genes")
   (:var mv25878 :isa regulate :object mv25880 :that-rel t :agent mv25867 :present "PRESENT"
    :raw-text "regulated")
   (:var mv25867 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv25870 :isa some :word "some"))
  ("What pathways contain CXCL8 and CXCL10?"
   (:var mv25886 :isa contain :theme mv25889 :patient mv25888 :present "PRESENT")
   (:var mv25889 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv25888 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv25881 mv25882))
   (:var mv25881 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv25882 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Remove the fact that IL10 activates STAT3 in the model"
   (:var mv25892 :isa remove :object mv25901 :present "PRESENT" :raw-text "Remove")
   (:var mv25901 :isa fact :statement mv25896 :has-determiner "THE")
   (:var mv25896 :isa bio-activate :agent mv25890 :object mv25891 :present "PRESENT" :raw-text
    "activates")
   (:var mv25890 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv25891 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Remove active IL10 activates STAT3 from the model"
   (:var mv25904 :isa remove :object mv25902 :present "PRESENT" :raw-text "Remove")
   (:var mv25902 :isa protein :predication mv25905 :raw-text "IL10" :uid "UP:P22301" :name
    "IL10_HUMAN")
   (:var mv25905 :isa active))
  ("What are some paths between BRAF and AKT1?"
   (:var mv25913 :isa be :subject mv25912 :predicate mv25923 :present "PRESENT")
   (:var mv25912 :isa what)
   (:var mv25923 :isa path :plural t :endpoints mv25920 :quantifier mv25914)
   (:var mv25920 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv25918 mv25911))
   (:var mv25918 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25911 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv25914 :isa some :word "some"))
  ("Does MEK1 activate ERK2" (:var mv25929 :isa polar-question :statement mv25928)
   (:var mv25928 :isa bio-activate :agent mv25924 :object mv25925 :raw-text "activate")
   (:var mv25924 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv25925 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("What drugs tagret BRAF?"
   (:var mv25933 :isa protein :has-determiner "WHAT" :modifier mv25932 :modifier mv25934 :raw-text
    "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25932 :isa drug :plural t :raw-text "drugs")
   (:var mv25934 :isa bio-entity :name "tagret"))
  ("Which kinases are in the MAPK signalling pathway?"
   (:var mv25948 :isa copular-predication-of-pp :item mv25943 :value mv25947 :prep "IN" :predicate
    mv25939)
   (:var mv25943 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv25947 :isa kinase :plural t :in-pathway mv25935 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv25935 :isa signaling-pathway :has-determiner "THE" :modifier mv25942 :raw-text
    "signalling pathway")
   (:var mv25942 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv25939 :isa be :present "PRESENT"))
  ("What drugs drugs target BRAF?"
   (:var mv25956 :isa target :agent mv25960 :object mv25957 :present "PRESENT" :raw-text "target")
   (:var mv25960 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv25957 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What rgulates ELLK1?"
   (:var mv25964 :isa bio-entity :has-determiner "WHAT" :modifier mv25965 :name "ELLK1")
   (:var mv25965 :isa bio-entity :name "rgulates"))
  ("Does STAT3 increase expression of c-fos in liver?"
   (:var mv25978 :isa polar-question :statement mv25975)
   (:var mv25975 :isa increase :agent mv25966 :affected-process mv25971 :raw-text "increase")
   (:var mv25966 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25971 :isa gene-transcript-express :object mv25967 :raw-text "expression")
   (:var mv25967 :isa protein :organ mv25974 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv25974 :isa liver))
  ("Does STAT3 affect c-fos expression in liver?"
   (:var mv25988 :isa polar-question :statement mv25986)
   (:var mv25986 :isa affect :agent mv25979 :affected-process mv25983 :raw-text "affect")
   (:var mv25979 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25983 :isa gene-transcript-express :organ mv25985 :object mv25980 :raw-text
    "expression")
   (:var mv25985 :isa liver)
   (:var mv25980 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 alter c-fos expression?" (:var mv25995 :isa polar-question :statement mv25994)
   (:var mv25994 :isa alter :agent mv25989 :affected-process mv25993 :raw-text "alter")
   (:var mv25989 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25993 :isa gene-transcript-express :object mv25990 :raw-text "expression")
   (:var mv25990 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcriptional regulator of c-fos?"
   (:var mv26003 :isa polar-question :statement mv25999)
   (:var mv25999 :isa be :subject mv25996 :predicate mv25997)
   (:var mv25996 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25997 :isa protein-family :molecule-type mv25998 :has-determiner "A" :raw-text
    "transcriptional regulator" :name "transcriptional regulator" :uid "XFAM:PF02082")
   (:var mv25998 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which drugs inhibit BRAF?"
   (:var mv26007 :isa inhibit :agent mv26009 :object mv26008 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv26009 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv26008 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("STAT3 upregulates ELK1."
   (:var mv26012 :isa upregulate :agent mv26010 :object mv26011 :present "PRESENT" :raw-text
    "upregulates")
   (:var mv26010 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26011 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What does STAT3 transcribe?"
   (:var mv26016 :isa transcribe :object mv26014 :agent mv26013 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv26014 :isa what)
   (:var mv26013 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is PI3K?" (:var mv26019 :isa be :subject mv26018 :predicate mv26017 :present "PRESENT")
   (:var mv26018 :isa what)
   (:var mv26017 :isa protein-family :raw-text "PI3K" :name "PI3-kinase" :count 4 :family-members
    ((protein (:name "PI3R5_HUMAN") (:uid "UP:Q8WYR1"))
     (protein (:name "PK3C3_HUMAN") (:uid "UP:Q8NEB9"))
     (protein (:name "PK3CA_HUMAN") (:uid "UP:P42336"))
     (protein (:name "P3C2G_HUMAN") (:uid "UP:O75747")))
    :uid "XFAM:PF00454"))
  ("What is MEK?" (:var mv26021 :isa be :subject mv26020 :predicate mv26022 :present "PRESENT")
   (:var mv26020 :isa what)
   (:var mv26022 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What phosphorylates ERK?"
   (:var mv26024 :isa phosphorylate :|agent-OR-cause| mv26023 :substrate mv26025 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv26023 :isa what)
   (:var mv26025 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What drugs target AKT?"
   (:var mv26030 :isa target :agent mv26032 :object mv26031 :present "PRESENT" :raw-text "target")
   (:var mv26032 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv26031 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066"))
  ("What regulates ELLK1?"
   (:var mv26035 :isa regulate :|agent-OR-cause| mv26034 :object mv26033 :present "PRESENT"
    :raw-text "regulates")
   (:var mv26034 :isa what) (:var mv26033 :isa bio-entity :name "ELLK1"))
  ("What regulates ELK1?"
   (:var mv26038 :isa regulate :|agent-OR-cause| mv26037 :object mv26036 :present "PRESENT"
    :raw-text "regulates")
   (:var mv26037 :isa what)
   (:var mv26036 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Does miR-20b-5pp target STAT3?" (:var mv26049 :isa polar-question :statement mv26048)
   (:var mv26048 :isa target :agent mv26047 :object mv26040 :raw-text "target")
   (:var mv26047 :isa bio-entity :name "miR-20b-5pp")
   (:var mv26040 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the mutations of PTEEN in prostate cancer?"
   (:var mv26052 :isa be :subject mv26051 :predicate mv26059 :present "PRESENT")
   (:var mv26051 :isa what)
   (:var mv26059 :isa mutation :plural t :has-determiner "THE" :raw-text "mutations"))
  ("What does selumitinibib target?"
   (:var mv26065 :isa target :|affected-process-OR-object| mv26062 :agent mv26066 :present
    "PRESENT" :raw-text "target")
   (:var mv26062 :isa what) (:var mv26066 :isa bio-entity :name "selumitinibib"))
  ("Is ELLK1 a kinase?" (:var mv26071 :isa polar-question :statement mv26068)
   (:var mv26068 :isa be :subject mv26067 :predicate mv26070)
   (:var mv26067 :isa bio-entity :name "ELLK1")
   (:var mv26070 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What regulates ELK12?"
   (:var mv26073 :isa regulate :|agent-OR-cause| mv26072 :object mv26074 :present "PRESENT"
    :raw-text "regulates")
   (:var mv26072 :isa what)
   (:var mv26074 :isa protein :variant-number mv26076 :raw-text "ELK" :uid "UP:P54762" :name
    "EPHB1_HUMAN")
   (:var mv26076 :isa number :value 12))
  ("What does sleumiitibbb target?"
   (:var mv26080 :isa target :|affected-process-OR-object| mv26077 :agent mv26081 :present
    "PRESENT" :raw-text "target")
   (:var mv26077 :isa what) (:var mv26081 :isa bio-entity :name "sleumiitibbb"))
  ("What is the evidence that MEK1 phosphorylates ERK1?"
   (:var mv26085 :isa be :subject mv26084 :predicate mv26090 :present "PRESENT")
   (:var mv26084 :isa what) (:var mv26090 :isa evidence :statement mv26089 :has-determiner "THE")
   (:var mv26089 :isa phosphorylate :agent mv26082 :substrate mv26083 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv26082 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv26083 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Remove STAT3 from the model."
   (:var mv26092 :isa remove :object mv26091 :present "PRESENT" :raw-text "Remove")
   (:var mv26091 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Remove the last interaction from the model."
   (:var mv26097 :isa remove :object mv26100 :present "PRESENT" :raw-text "Remove")
   (:var mv26100 :isa interact :has-determiner "THE" :predication mv26099 :raw-text "interaction")
   (:var mv26099 :isa last-sequence :name "last"))
  ("IL10 activates STAT3"
   (:var mv26107 :isa bio-activate :agent mv26105 :object mv26106 :present "PRESENT" :raw-text
    "activates")
   (:var mv26105 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv26106 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How many interactions are in the model?"
   (:var mv26117 :isa copular-predication-of-pp :item mv26115 :value mv26114 :prep mv26112
    :predicate mv26111)
   (:var mv26115 :isa interact :plural t :quantifier how-many :raw-text "interactions")
   (:var mv26114 :isa model :has-determiner "THE") (:var mv26112 :isa in :word "in")
   (:var mv26111 :isa be :present "PRESENT"))
  ("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
   (:var mv26129 :isa polar-question :statement mv26127)
   (:var mv26127 :isa decrease :agent mv26120 :|affected-process-OR-object| mv26124 :raw-text
    "decrease")
   (:var mv26120 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv26124 :isa bio-amount :measured-item mv26118 :has-determiner "THE" :raw-text "amount")
   (:var mv26118 :isa protein :predication mv26126 :raw-text "MAP2K2" :uid "UP:P36507" :name
    "MP2K2_HUMAN")
   (:var mv26126 :isa phosphorylate :substrate mv26118 :raw-text "phosphorylated"))
  ("What kinases does ERK1 activate?"
   (:var mv26135 :isa bio-activate :object mv26136 :agent mv26130 :present "PRESENT" :raw-text
    "activate")
   (:var mv26136 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26130 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What kinases does MEK1 activate?"
   (:var mv26142 :isa bio-activate :object mv26143 :agent mv26137 :present "PRESENT" :raw-text
    "activate")
   (:var mv26143 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26137 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What does ERK1 activate?"
   (:var mv26147 :isa bio-activate :|affected-process-OR-object| mv26145 :agent mv26144 :present
    "PRESENT" :raw-text "activate")
   (:var mv26145 :isa what)
   (:var mv26144 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does JAK1 phosphorylate?"
   (:var mv26151 :isa phosphorylate :|substrate-OR-site-OR-amino-acid| mv26149 :agent mv26148
    :present "PRESENT" :raw-text "phosphorylate")
   (:var mv26149 :isa what)
   (:var mv26148 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What kinases does STAT3 regulate?"
   (:var mv26157 :isa regulate :object mv26158 :agent mv26152 :present "PRESENT" :raw-text
    "regulate")
   (:var mv26158 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26152 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve SRF and what does SRF bind?"
   (:var mv26170 :isa collection :type involve :number 2 :items (mv26162 mv26168))
   (:var mv26162 :isa involve :theme mv26169 :object mv26163 :present "PRESENT")
   (:var mv26169 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26163 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv26168 :isa binding :direct-bindee mv26165 :binder mv26167 :present "PRESENT" :raw-text
    "bind")
   (:var mv26165 :isa what)
   (:var mv26167 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF?"
   (:var mv26174 :isa involve :theme mv26176 :object mv26175 :present "PRESENT")
   (:var mv26176 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26175 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does SRF bind?"
   (:var mv26180 :isa binding :direct-bindee mv26177 :binder mv26179 :present "PRESENT" :raw-text
    "bind")
   (:var mv26177 :isa what)
   (:var mv26179 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF and is SRF a kinase?"
   (:var mv26192 :isa collection :type involve :number 2 :items (mv26184 mv26187))
   (:var mv26184 :isa involve :theme mv26191 :object mv26185 :present "PRESENT")
   (:var mv26191 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26185 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv26187 :isa be :subject mv26191 :predicate mv26188 :present "PRESENT")
   (:var mv26188 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Does MAP2K1 phosphorylate and activate MAPK1?"
   (:var mv26203 :isa polar-question :statement mv26202)
   (:var mv26202 :isa collection :type phosphorylate :items
    (((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:substrate (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "phosphorylate"))
     ((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:object (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "activate")))
    :number 2))
  ("Does MAP2K1 phosphorylate MAPK3?" (:var mv26209 :isa polar-question :statement mv26208)
   (:var mv26208 :isa phosphorylate :agent mv26204 :substrate mv26205 :raw-text "phosphorylate")
   (:var mv26204 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv26205 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Which kinases activate MEK2?"
   (:var mv26214 :isa bio-activate :agent mv26215 :object mv26210 :present "PRESENT" :raw-text
    "activate")
   (:var mv26215 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv26210 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Which drugs target upstreams of CXCL8 and CXCL10?"
   (:var mv26222 :isa target :agent mv26228 :affected-process mv26230 :present "PRESENT" :raw-text
    "target")
   (:var mv26228 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv26230 :isa upstream-segment :plural t :pathwaycomponent mv26227 :raw-text "upstreams")
   (:var mv26227 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv26216 mv26217))
   (:var mv26216 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv26217 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Which drugs target CXCL8?"
   (:var mv26236 :isa target :agent mv26237 :object mv26231 :present "PRESENT" :raw-text "target")
   (:var mv26237 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv26231 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Which drugs target Jak3?"
   (:var mv26243 :isa target :agent mv26244 :object mv26238 :present "PRESENT" :raw-text "target")
   (:var mv26244 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv26238 :isa protein :raw-text "Jak3" :uid "UP:P52333" :name "JAK3_HUMAN"))
  ("What drugs target transcription factors shared by CXCL8 and CXCL10?"
   (:var mv26253 :isa target :agent mv26258 :object mv26246 :present "PRESENT" :raw-text "target")
   (:var mv26258 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv26246 :isa transcription-factor :plural t :predication mv26254 :raw-text
    "transcription factors")
   (:var mv26254 :isa share :object mv26246 :participant mv26257 :past "PAST" :raw-text "shared")
   (:var mv26257 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv26247 mv26248))
   (:var mv26247 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv26248 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What kinases does miR-20a-5p target?"
   (:var mv26267 :isa target :object mv26268 :agent mv26261 :present "PRESENT" :raw-text "target")
   (:var mv26268 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26261 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What transcription factors does miR-20a-5p target?"
   (:var mv26275 :isa target :object mv26276 :agent mv26271 :present "PRESENT" :raw-text "target")
   (:var mv26276 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv26271 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What kinases are mutually exclusive with CDH1 for breast cancer?"
   (:var mv26289 :isa copular-predication :item mv26286 :value mv26277 :predicate mv26283)
   (:var mv26286 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26277 :isa mutual-exclusivity :disease mv26279 :alternative mv26278)
   (:var mv26279 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv26278 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv26283 :isa be :present "PRESENT"))
  ("What drugs target fakeprotein?"
   (:var mv26294 :isa target :agent mv26296 :object mv26295 :present "PRESENT" :raw-text "target")
   (:var mv26296 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv26295 :isa bio-entity :name "fakeprotein"))
  ("Which kinases are in the FAKE signaling pathway?"
   (:var mv26310 :isa copular-predication-of-pp :item mv26305 :value mv26309 :prep "IN" :predicate
    mv26301)
   (:var mv26305 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv26309 :isa kinase :plural t :in-pathway mv26297 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv26297 :isa signaling-pathway :has-determiner "THE" :modifier mv26304 :raw-text
    "signaling pathway")
   (:var mv26304 :isa bio-entity :name "FAKE") (:var mv26301 :isa be :present "PRESENT"))
  ("What are the mutations of PTEN in fictional cancer?"
   (:var mv26313 :isa be :subject mv26312 :predicate mv26326 :present "PRESENT")
   (:var mv26312 :isa what)
   (:var mv26326 :isa mutation :plural t :context mv26321 :object mv26318 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv26321 :isa cancer :predication mv26320) (:var mv26320 :isa fictional)
   (:var mv26318 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))
  ("What are the mutations of PTEN in liver cancer?"
   (:var mv26328 :isa be :subject mv26327 :predicate mv26341 :present "PRESENT")
   (:var mv26327 :isa what)
   (:var mv26341 :isa mutation :plural t :context mv26336 :object mv26333 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv26336 :isa cancer :organ mv26335) (:var mv26335 :isa liver)
   (:var mv26333 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))
  ("Remove the fact that ELk1 transcribes FAKE in the model."
   (:var mv26343 :isa remove :object mv26353 :present "PRESENT" :raw-text "Remove")
   (:var mv26353 :isa fact :statement mv26347 :has-determiner "THE")
   (:var mv26347 :isa transcribe :agent mv26342 :object mv26348 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv26342 :isa protein :raw-text "ELk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv26348 :isa bio-entity :name "FAKE"))
  ("ELK1 transcribes FOS"
   (:var mv26355 :isa transcribe :agent mv26354 :object mv26356 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv26354 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv26356 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Remove the fact that ELK1 transcribes FOS in the model."
   (:var mv26358 :isa remove :object mv26368 :present "PRESENT" :raw-text "Remove")
   (:var mv26368 :isa fact :statement mv26362 :has-determiner "THE")
   (:var mv26362 :isa transcribe :agent mv26357 :object mv26363 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv26357 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv26363 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What transcription factors are shared by CXCL8 and FAKE10?"
   (:var mv26383 :isa share :object mv26382 :participant mv26381 :present "PRESENT" :raw-text
    "shared")
   (:var mv26382 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv26381 :isa collection :raw-text "CXCL8 and FAKE10" :type protein :number 2 :items
    (mv26371 mv26380))
   (:var mv26371 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv26380 :isa bio-entity :name "FAKE10"))
  ("What transcription factors are shared by CXCL8 and CXCL10?"
   (:var mv26396 :isa share :object mv26395 :participant mv26394 :present "PRESENT" :raw-text
    "shared")
   (:var mv26395 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv26394 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv26387 mv26388))
   (:var mv26387 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv26388 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What databases do you use?" (:var mv26405 :isa database :plural t :has-determiner "WHAT"))
  ("What is the MSA?" (:var mv26407 :isa be :subject mv26406 :predicate mv26409 :present "PRESENT")
   (:var mv26406 :isa what)
   (:var mv26409 :isa protein :has-determiner "THE" :raw-text "MSA" :uid "UP:Q9FIB6" :name
    "PS12A_ARATH"))
  ("What tissues can I ask about?"
   (:var mv26420 :isa ask :patient mv26419 :modal mv26413 :agent mv26414 :present "PRESENT")
   (:var mv26419 :isa tissue :plural t :has-determiner "WHAT") (:var mv26413 :isa can)
   (:var mv26414 :isa interlocutor :name "speaker"))
  ("What cancers can I ask about?"
   (:var mv26431 :isa ask :patient mv26430 :modal mv26424 :agent mv26425 :present "PRESENT")
   (:var mv26430 :isa cancer :plural t :has-determiner "WHAT") (:var mv26424 :isa can)
   (:var mv26425 :isa interlocutor :name "speaker"))
  ("What mechanisms can I ask about?"
   (:var mv26442 :isa ask :patient mv26441 :modal mv26435 :agent mv26436 :present "PRESENT")
   (:var mv26441 :isa bio-mechanism :plural t :has-determiner "WHAT") (:var mv26435 :isa can)
   (:var mv26436 :isa interlocutor :name "speaker"))
  ("What does STAT3 regulate?"
   (:var mv26446 :isa regulate :|affected-process-OR-object| mv26444 :agent mv26443 :present
    "PRESENT" :raw-text "regulate")
   (:var mv26444 :isa what)
   (:var mv26443 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these are kinases?"
   (:var mv26450 :isa be :subject mv26449 :predicate mv26452 :present "PRESENT")
   (:var mv26449 :isa these :quantifier mv26447 :word "these") (:var mv26447 :isa which)
   (:var mv26452 :isa kinase :plural t :raw-text "kinases"))
  ("What pathways is ERK1 in?"
   (:var mv26458 :isa be :subject mv26460 :predicate mv26454 :present "PRESENT")
   (:var mv26460 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26454 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Which of these is AKT1 in?"
   (:var mv26465 :isa be :subject mv26464 :predicate mv26461 :present "PRESENT")
   (:var mv26464 :isa these :quantifier mv26462 :word "these") (:var mv26462 :isa which)
   (:var mv26461 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What pathways are ERK1 and AKT1 in?"
   (:var mv26473 :isa be :subject mv26477 :predicate mv26476 :present "PRESENT")
   (:var mv26477 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26476 :isa collection :raw-text "ERK1 and AKT1" :type protein :number 2 :items
    (mv26468 mv26469))
   (:var mv26468 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv26469 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What microRNAs target STAT3?"
   (:var mv26483 :isa target :agent mv26484 :object mv26478 :present "PRESENT" :raw-text "target")
   (:var mv26484 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "microRNAs")
   (:var mv26478 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these target SMAD2?"
   (:var mv26490 :isa target :|agent-OR-cause| mv26488 :object mv26485 :present "PRESENT" :raw-text
    "target")
   (:var mv26488 :isa these :quantifier mv26486 :word "these") (:var mv26486 :isa which)
   (:var mv26485 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Do any of these regulate IL2?" (:var mv26500 :isa polar-question :statement mv26498)
   (:var mv26498 :isa regulate :|agent-OR-cause| mv26496 :object mv26492 :raw-text "regulate")
   (:var mv26496 :isa these :quantifier mv26494 :word "these") (:var mv26494 :isa any :word "any")
   (:var mv26492 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What regulates STAT3?"
   (:var mv26503 :isa regulate :|agent-OR-cause| mv26502 :object mv26501 :present "PRESENT"
    :raw-text "regulates")
   (:var mv26502 :isa what)
   (:var mv26501 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve these?"
   (:var mv26507 :isa involve :theme mv26509 :object mv26508 :present "PRESENT")
   (:var mv26509 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26508 :isa these :word "these"))
  ("What are the targets of NG25?"
   (:var mv26512 :isa be :subject mv26511 :predicate mv26520 :present "PRESENT")
   (:var mv26511 :isa what)
   (:var mv26520 :isa target-protein :plural t :treatment mv26510 :has-determiner "THE" :raw-text
    "targets")
   (:var mv26510 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("What is their most likely cellular location?"
   (:var mv26522 :isa be :subject mv26521 :predicate mv26528 :present "PRESENT")
   (:var mv26521 :isa what)
   (:var mv26528 :isa location-of :theme mv26523 :predication mv26526 :modifier mv26527)
   (:var mv26523 :isa pronoun/plural :word "their") (:var mv26526 :isa likely :comparative mv26524)
   (:var mv26524 :isa superlative-quantifier :name "most")
   (:var mv26527 :isa cellular :name "cellular"))
  ("Is ERK1 a transcription factor?" (:var mv26533 :isa polar-question :statement mv26531)
   (:var mv26531 :isa be :subject mv26529 :predicate mv26530)
   (:var mv26529 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv26530 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Is it a kinase?" (:var mv26538 :isa polar-question :statement mv26534)
   (:var mv26534 :isa be :subject mv26535 :predicate mv26537)
   (:var mv26535 :isa pronoun/inanimate :word "it")
   (:var mv26537 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What is PLX-4720?"
   (:var mv26541 :isa be :subject mv26540 :predicate mv26539 :present "PRESENT")
   (:var mv26540 :isa what)
   (:var mv26539 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What does it target?"
   (:var mv26546 :isa target :|affected-process-OR-object| mv26542 :|agent-OR-cause| mv26544
    :present "PRESENT" :raw-text "target")
   (:var mv26542 :isa what) (:var mv26544 :isa pronoun/inanimate :word "it"))
  ("What genes does STAT3 regulate?"
   (:var mv26552 :isa regulate :object mv26553 :agent mv26547 :present "PRESENT" :raw-text
    "regulate")
   (:var mv26553 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv26547 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways is it in?"
   (:var mv26557 :isa be :subject mv26560 :predicate mv26558 :present "PRESENT")
   (:var mv26560 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26558 :isa pronoun/inanimate :word "it"))
  ("What are the targets of PLX-4720?"
   (:var mv26563 :isa be :subject mv26562 :predicate mv26571 :present "PRESENT")
   (:var mv26562 :isa what)
   (:var mv26571 :isa target-protein :plural t :treatment mv26561 :has-determiner "THE" :raw-text
    "targets")
   (:var mv26561 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("Does it target BRAF?" (:var mv26578 :isa polar-question :statement mv26577)
   (:var mv26577 :isa target :|agent-OR-cause| mv26573 :object mv26576 :raw-text "target")
   (:var mv26573 :isa pronoun/inanimate :word "it")
   (:var mv26576 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Tofacitinib inhibits JAK1 and active STAT3 transcribes IL2."
   (:var mv26583 :isa inhibit :agent mv26582 :object mv26587 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv26582 :isa drug :raw-text "Tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv26587 :isa collection :raw-text "JAK1 and active STAT3" :type protein :number 2 :items
    (mv26579 mv26580))
   (:var mv26579 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv26580 :isa protein :predication mv26585 :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv26585 :isa active))
  ("JAK1 activates STAT3"
   (:var mv26590 :isa bio-activate :agent mv26588 :object mv26589 :present "PRESENT" :raw-text
    "activates")
   (:var mv26588 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv26589 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("I want to find out how Jak1 activates IL2"
   (:var mv26596 :isa want :agent mv26593 :theme mv26606 :present "PRESENT")
   (:var mv26593 :isa interlocutor :name "speaker")
   (:var mv26606 :isa find-out :agent mv26593 :statement mv26603)
   (:var mv26603 :isa wh-question :statement mv26602 :var nil :wh how)
   (:var mv26602 :isa bio-activate :agent mv26591 :object mv26592 :present "PRESENT" :raw-text
    "activates")
   (:var mv26591 :isa protein :raw-text "Jak1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv26592 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells."
   (:var mv26612 :isa want :agent mv26609 :theme mv26628 :present "PRESENT")
   (:var mv26609 :isa interlocutor :name "speaker")
   (:var mv26628 :isa find-out :agent mv26609 :statement mv26625)
   (:var mv26625 :isa wh-question :statement mv26618 :var nil :wh how)
   (:var mv26618 :isa bio-activate :agent mv26607 :object mv26619 :present "PRESENT" :raw-text
    "activates")
   (:var mv26607 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv26619 :isa protein :cell-type mv26623 :raw-text "JUN" :uid "UP:P05412" :name
    "JUN_HUMAN")
   (:var mv26623 :isa cell-type :plural t :cell-line mv26608)
   (:var mv26608 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Let's build a model."
   (:var mv26633 :isa explicit-suggestion :suggestion mv26630 :marker let-as-directive)
   (:var mv26630 :isa build :artifact mv26632 :present "PRESENT")
   (:var mv26632 :isa model :has-determiner "A"))
  ("Mek phosphorylates MAPK; MapK phosphorylates RSK"
   (:var mv26635 :isa phosphorylate :agent mv26634 :substrate mv26636 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv26634 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv26636 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv26644 :isa regulate :agent mv26645 :object mv26640 :present "PRESENT" :raw-text
    "regulate")
   (:var mv26645 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26640 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What positively regulates IL2?"
   (:var mv26646 :isa upregulate :|agent-OR-cause| mv26648 :object mv26647 :present "PRESENT"
    :raw-text "positively regulates")
   (:var mv26648 :isa what)
   (:var mv26647 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What can have the effect of activation on STAT3?"
   (:var mv26652 :isa have :possessor mv26650 :thing-possessed mv26654 :modal mv26651)
   (:var mv26650 :isa what)
   (:var mv26654 :isa effect :object mv26649 :affected-process mv26657 :has-determiner "THE"
    :raw-text "effect")
   (:var mv26649 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26657 :isa bio-activate :raw-text "activation") (:var mv26651 :isa can))
  ("Are there any drugs for IL10?" (:var mv26673 :isa polar-question :statement mv26669)
   (:var mv26669 :isa there-exists :value mv26672 :predicate mv26663)
   (:var mv26672 :isa drug :plural t :target mv26661 :quantifier mv26665 :raw-text "drugs")
   (:var mv26661 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv26665 :isa any :word "any") (:var mv26663 :isa syntactic-there))
  ("Which tissues express STAT3?"
   (:var mv26678 :isa gene-transcript-express :agent mv26679 :object mv26674 :present "PRESENT"
    :raw-text "express")
   (:var mv26679 :isa tissue :plural t :has-determiner "WHICH")
   (:var mv26674 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How does MEK1 regulate ERK1?"
   (:var mv26684 :isa regulate :manner mv26682 :agent mv26680 :object mv26681 :present "PRESENT"
    :raw-text "regulate")
   (:var mv26682 :isa how)
   (:var mv26680 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv26681 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What are transcription factors that bind the IL15 and IL2 genes?"
   (:var mv26690 :isa be :subject mv26689 :predicate mv26700 :present "PRESENT")
   (:var mv26689 :isa what)
   (:var mv26700 :isa transcription-factor :plural t :predication mv26692 :raw-text
    "transcription factors")
   (:var mv26692 :isa binding :binder mv26700 :that-rel t :direct-bindee mv26699 :present "PRESENT"
    :raw-text "bind")
   (:var mv26699 :isa gene :plural t :has-determiner "THE" :expresses mv26697 :raw-text "genes")
   (:var mv26697 :isa collection :raw-text "IL15 and IL2" :type protein :number 2 :items
    (mv26687 mv26688))
   (:var mv26687 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv26688 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What kinases regulate the IL15 and IL2?"
   (:var mv26706 :isa regulate :agent mv26710 :object mv26709 :present "PRESENT" :raw-text
    "regulate")
   (:var mv26710 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26709 :isa collection :has-determiner "THE" :raw-text "IL15 and IL2" :type protein
    :number 2 :items (mv26701 mv26702))
   (:var mv26701 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv26702 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What factors from the literature regulate IL15 and IL2?"
   (:var mv26722 :isa factor :plural t :has-determiner "WHAT"))
  ("What relations in the literature match tofacitinib inhibits IL15?"
   (:var mv26735 :isa relation :plural t :has-determiner "WHAT"))
  ("What is MAP3K7?" (:var mv26739 :isa be :subject mv26738 :predicate mv26737 :present "PRESENT")
   (:var mv26738 :isa what)
   (:var mv26737 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Is MAP3K7 a protein?" (:var mv26744 :isa polar-question :statement mv26741)
   (:var mv26741 :isa be :subject mv26740 :predicate mv26743)
   (:var mv26740 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv26743 :isa protein :has-determiner "A" :raw-text "protein"))
  ("What does SMAD2 transcribe?"
   (:var mv26748 :isa transcribe :object mv26746 :agent mv26745 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv26746 :isa what)
   (:var mv26745 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Are there drugs for IL10?" (:var mv26759 :isa polar-question :statement mv26756)
   (:var mv26756 :isa there-exists :value mv26758 :predicate mv26751)
   (:var mv26758 :isa drug :plural t :target mv26749 :raw-text "drugs")
   (:var mv26749 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv26751 :isa syntactic-there))
  ("What relations in the literature match tofacitinib?"
   (:var mv26769 :isa relation :plural t :has-determiner "WHAT"))
  ("What relations in the literature match STAT3 regulates IL15 ?"
   (:var mv26782 :isa relation :plural t :has-determiner "WHAT"))))
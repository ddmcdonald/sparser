;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2015-2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "examples"
;;;  Module: "grammar/model/sl/biology/
;;; version: January 2021

;; Broken out from Biology-workspace 10/8/15

(in-package :sparser)

;;;---------------
;;; Example texts
;;;---------------

;; The Guardian 2/1/21
"A leading infectious diseases scientist said yesterday that a British strain of coronavirus, thought to be more contagious and more deadly, could hit the US like a “hurricane” in spring. Epidemiologist Michael Osterholm, a member of Joe Biden’s transition coronavirus advisory board, predicted that the variant could become the dominant strain of coronavirus in the US. It came as the US confirmed more than 26 million cases of coronavirus, and the death toll neared half a million."

;; NYT CoV newsletter 1/29/21
"Johnson & Johnson, the only major drugmaker developing a single-dose Covid vaccine, announced on Friday that its shot had provided strong protection in clinical trials.
If the Food and Drug Administration grants the company an emergency authorization, it would expand the vaccine supply in the United States as the Biden administration seeks to immunize many more Americans.
The results came with a significant cautionary note: In the U.S., the vaccine had an efficacy rate of 72 percent in clinical trials. But in South Africa, a country gripped by a new and more contagious variant, the efficacy rate dropped to just 57 percent.
The variant, which has spread to at least 31 countries, including the United States, may also blunt the effectiveness of Covid vaccines made by Pfizer-BioNTech, Moderna and Novavax."


;; NYT Evening Briefing 1/20/21
"A new variant of the coronavirus variant has emerged closer to home. The mutant, which belongs to a lineage known as CAL.20C, seemed to have popped up in California in July but lain low until November. The variant may be more transmissible; it showed up in more than half of samples tested last week by researchers in Los Angeles."

#| From Washington Post 1/13/21 where the larger context is China imposing a lockdown|#
"The move comes at a time when the Chinese economy was surging back after last year’s slump and when residents, many who felt like the pandemic was a thing of the past, were getting used to something close to normal life. China, a country of 1.4 billion people, has reported an average of 109 new cases a day over the past week. (For some perspective, the U.S. is averaging a quarter-million a day.)"

#| From para on CoV in England in Washington Post 'Coronavirus Updates'
email 1/11/21 |#
"In Ireland, cases are skyrocketing. Just weeks ago, the country was doing well compared with the rest of Europe. Now it has the highest number of per capita infections in the world."

#| Lead paragraph in the Gardian online summary, 12/30/20
https://www.theguardian.com/world/2020/dec/29/us-first-case-new-uk-covid-variant?utm_term=996b3518f208e4677edd57aa5463dd04&utm_campaign=USMorningBriefing&utm_source=esp&utm_medium=Email&CMP=usbriefing_email|#

"The US has reported its first case of the new strain of coronavirus spreading in the UK. A man in Colorado was identified as having the mutant form of the virus, known as B.1.1.7, which is thought to be more contagious than other strains. The circulation of the strain in the UK has triggered even stricter lockdown measures, and prompted other countries to restrict travel from the UK."



#|
;;; Abstract from https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7075079/#:~:text=Levels%20of%20social%20support%20for,degree%20of%20anxiety%20and%20stress
"Effects of Social Support on Sleep Quality of Medical Staff ..."

;; Title
"The Effects of Social Support on Sleep Quality of Medical Staff Treating Patients with Coronavirus Disease 2019 (COVID-19) in January and February 2020 in China"

;; Abstract
[ Background ]
"Coronavirus disease 2019 (COVID-19), formerly known as severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2) and 2019 novel coronavirus (2019-nCoV), was first identified in December 2019 in Wuhan City, China. Structural equation modeling (SEM) is a multivariate analysis method to determine the structural relationship between measured variables. This observational study aimed to use SEM to determine the effects of social support on sleep quality and function of medical staff who treated patients with COVID-19 in January and February 2020 in Wuhan, China."

[ Material/Methods ]
"A one-month cross-sectional observational study included 180 medical staff who treated patients with COVID-19 infection. Levels of anxiety, self-efficacy, stress, sleep quality, and social support were measured using the and the Self-Rating Anxiety Scale (SAS), the General Self-Efficacy Scale (GSES), the Stanford Acute Stress Reaction (SASR) questionnaire, the Pittsburgh Sleep Quality Index (PSQI), and the Social Support Rate Scale (SSRS), respectively. Pearson’s correlation analysis and SEM identified the interactions between these factors."

[ Results }
"Levels of social support for medical staff were significantly associated with self-efficacy and sleep quality and negatively associated with the degree of anxiety and stress. Levels of anxiety were significantly associated with the levels of stress, which negatively impacted self-efficacy and sleep quality. Anxiety, stress, and self-efficacy were mediating variables associated with social support and sleep quality."

[ Conclusions ]
"SEM showed that medical staff in China who were treating patients with COVID-19 infection during January and February 2020 had levels of anxiety, stress, and self-efficacy that were dependent on sleep quality and social support."





|#


;;; Washingtom Post Cov newsletter 8/12/20
"The amount of viral particles someone is exposed to is called the viral dose. Scientists have known for decades that exposure to a small amount of any given virus is easier for our immune systems to overcome than exposure to a large amount. It's hard to research exactly how high a dose of the coronavirus it takes to make someone severely ill, since intentionally exposing humans to it would be unethical."

#| https://www.washingtonpost.com/politics/2020/08/03/most-dangerous-false-positive-trumps-ongoing-insistence-that-pandemic-is-under-control

How did Italy, France and Spain do? After seeing initial surges in cases (and, sadly, in deaths), they managed to get the virus under control. That’s the same pattern that was seen in New York, but not in the United States broadly or in a number of large states.

Over the past month in Spain, the number of new cases has increased fivefold — but the country is now seeing only 2,300 new cases a day on average, compared to the United States’ 62,000. That’s about 50 new cases for every million people in Spain versus more than 190 for every million Americans. And Spain is an exception, not the norm. Trump also pointed to a new outbreak in a region of Australia, where the number of new cases is again five times what it was a month ago.

The country is now seeing about 430 new cases per day on average, according to data from Johns Hopkins University, about 18 per million residents.

Victoria has been averaging 482 new cases per day over the past week, according to Johns Hopkins, 73 per million residents. Of Florida's 67 counties, three (Broward, Miami-Dade and Palm Beach) are currently averaging more daily cases than Victoria saw in the past 24 hours. Sixty-six of Florida's counties are seeing more cases each day on average as a function of population. In Texas, there are four counties with more cases and 187 of 254 counties with more cases as a function of population.



|#

#| clipped from https://www.nytimes.com/2020/06/30/world/asia/h1n1-swine-flu-virus-china-pig.html  7/1/20

Scientists Say New Strain of Swine Flu Virus Is Spreading to Humans in China

A new study warns that the strain of H1N1, common on China’s pig farms since 2016, should be “urgently” controlled to avoid another pandemic.

A new strain of the H1N1 swine flu virus is spreading silently in workers on pig farms in China and should be “urgently” controlled to avoid another pandemic, a team of scientists says in a new study.

H1N1 is highly transmissible and spread around the world in 2009, killing about 285,000 people and morphing into seasonal flu.

The newer strain, known as G4 EA H1N1, has been common on China’s pig farms since 2016 and replicates efficiently in human airways, according to the study published on Monday. So far, it has infected some people without causing disease, but health experts fear that could change without warning.

\“G4 viruses have all the essential hallmarks of a candidate pandemic virus,” the study said, adding that controlling the spread in pigs and closely monitoring human populations “should be urgently implemented.\”

Eurasian variations of H1N1 have been circulating in pigs in Europe and Asia for decades, the study said, but the incidence of G4 viruses in farmed Chinese pigs with respiratory symptoms began rising sharply after 2014.

Recent evidence \“indicates that G4 EA H1N1 virus is a growing problem in pig farms, and the widespread circulation of G4 viruses in pigs inevitably increases their exposure to humans,\” it said.

|#


#| Clipped from NYT "Coronavirus Briefing" of 6/16/20

"Six months into the outbreak, we have what might be the best news yet on a treatment: Scientists in Britain say they have identified the first drug shown to reduce coronavirus-related deaths. The steroid dexamethasone, a decades-old anti-inflammatory drug, appears to help patients with dire cases of Covid-19. Experts believe the drug is effective in calming the overactive immune response known as a cytokine storm. For patients on ventilators, it reduced the death rate by a third, the scientists said. For those on oxygen, death rates dropped by a fifth. The drug showed no benefit for patients who did not need respiratory support. Another benefit of the drug is that it’s very cheap — around $8 per treatment, according to one of the leaders of the trial. It’s also widely available and already sitting on pharmacy shelves around the world."
|#

;;--- Clipped from https://www.nytimes.com/2020/06/02/health/coronavirus-profile-covid.html?algo=identity&fellback=false&imp_id=90584100&action=click&module=Science%20%20Technology&pgtype=Homepage
;; "Monster or Machine? A Profile of the Coronavirus at 6 Months"
#|

(p "It was formally identified on Jan. 7 by scientists in China. For weeks beforehand, a mysterious respiratory ailment had been circulating in the city of Wuhan. Health officials were worried that it might be a reappearance of severe acute respiratory syndrome, or SARS, an alarming viral illness that emerged abruptly in 2002, infected more than 8,000 people and killed nearly 800 in the next several months, then was quarantined into oblivion.")

|#


;;----- drugs, Adverse events

;; Clipped from https://www.drugbank.ca/drugs/DB00503

#| From "Description", page on Ritonavir

(p "Ritonavir is an HIV protease inhibitor that interferes with the reproductive cycle of HIV. Although it was initially developed as an independent antiviral agent, it has been shown to possess advantageous properties in combination regimens with low-dose ritonavir and other protease inhibitors. It is now more commonly used as a booster of other protease inhibitors and is available in both liquid formulation and as capsules.")

(p "While ritonavir is not an active antiviral agent against hepatitis C virus (HCV) infection, it is added in combination therapies indicated for treatment of HCV infections as a booster. Ritonavir is a potent CYP3A inhibitor that increases peak and trough plasma drug concentrations of other protease inhibitors such as Paritaprevir and overall drug exposure. American Association for the Study of Liver Diseases (AASLD) and the Infectious Diseases Society of America (IDSA) guidelines recommend ritonavir-boosted combination therapies as a first-line therapy for HCV Genotype 1a/b and 4 treatment-naïve patients with or without cirrhosis.")

;; Pharmcology section
  
Associated Conditions:
(p "Human Immunodeficiency Virus (HIV) Infections")

Indication:
(p "Indicated in combination with other antiretroviral agents for the treatment of HIV-1 infection.")

Toxicity:
(p "Human experience of acute overdose with ritonavir is limited. One patient in clinical trials took ritonavir 1500 mg/day for two days. The patient reported paresthesias which resolved after the dose was decreased. A post-marketing case of renal failure with eosinophilia has been reported with ritonavir overdose. The approximate lethal dose was found to be greater than 20 times the related human dose in rats and 10 times the related human dose in mice. Oral LD value in rats is >2500 mg/kg. Adverse effects of ritonavir may arise from drug-drug interactions. Other effects include hepatotoxicity, pancreatitis, and allergic reactions/hypersensitivity.")

|#
;;-------------------------------


;; From NYT 'On Politics' newsletter for 5/29/20
(defun compare-death-tolls ()
  ;; Required context for what year we're in (2020) and what virus
  ;; we're talking about. Goal is to repesent the contrast.
  (p "From early April to late May, the virus’s death toll skyrocketed. Just over 50,000 people had been killed by the pandemic worldwide at the start of last month, but today the death toll in the United States alone is more than 100,000."))


;; scraped from https://bfi.uchicago.edu/wp-content/uploads/BFI_WP_202058-1.pdf?campaign_id=116&emc=edit_pk_20200512&instance_id=18415&nl=paul-krugman&regi_id=21241184&segment_id=27424&te=1&user_id=2c8a54c8a23f13b62411bbe259d68b73  5//14/20
(defun novel-virus ()
  (p
   "A novel coronavirus disease -- later named COVID-19 -- originated in China in December 2019. The virus quickly spread to the rest of the world. The first confirmed case within the U.S. occurred in mid-January. On March 11th, the World Health Organization declared the COVID-19 outbreak a global pandemic. On the same day, the U.S. government banned travel from dozens of European countries. As of early May 2020, there were approximately 3.6 million confirmed COVID-19 cases worldwide resulting in roughly 250,000 deaths. Within the U.S., there were approximately 1.2 million confirmed COVID-19 cases resulting in 70,000 deaths as of early May."))



#| "SARS-CoV-2 is sentitive to type I interferon pretreatment"
https://www.biorxiv.org/content/10.1101/2020.03.07.982264v3.full

Abstract

SARS-CoV-2, a novel coronavirus (CoV), has recently emerged causing an ongoing outbreak of viral pneumonia around the world. While genetically distinct from the original SARS-CoV, both group 2B CoVs share similar genome organization and origins to coronaviruses harbored in bats. Importantly, initial guidance has used insights from SARS-CoV infection to inform treatment and public health strategies. In this report, we evaluate type-I Interferon (IFN-I) sensitivity of SARS-CoV-2 relative to the original SARS-CoV. Our results indicate that while SARS-CoV-2 maintains similar viral replication kinetics to SARS-CoV in Vero cell, the novel CoV is much more sensitive to IFN-I pretreatment. Examining transcriptional factor activation and interferon stimulated gene (ISG) induction, SARS-CoV-2 in the context of type I IFN induces phosphorylation of STAT1 and increased ISG proteins. In contrast, the original SARS-CoV has no evidence for STAT1 phosphorylation or ISG protein increases even in the presence of type I IFN pretreatment. Next, we examined IFN competent Calu3 2B4 cells finding SARS-CoV-2 had reduced viral replication relative to SARS-CoV and induced STAT1 phosphorylation late during infection. Finally, we examined homology between SARS-CoV and SARS-CoV-2 in viral proteins shown to be interferon antagonist. The absence of open reading frame (ORF) 3b and significant changes to ORF6 suggest the two key IFN antagonists may not maintain equivalent function in SARS-CoV-2. Together, the results identify key differences in susceptibility to the IFN-I response between SARS-CoV and SARS-CoV-2. that could help inform disease progression, treatment options, and animal model development.

Importance 
With the ongoing outbreak of COVID-19 disease, differences between the SARS-CoV-2 and the original SARS-CoV could be leveraged to inform disease progression and eventual treatment options. In addition, these findings could have key implications for animal model development as well as further research into how SARS-CoV-2 modulates the type I IFN response early during infection.


Introduction

At the end of 2019, a cluster of patients in Hubei Province, China was diagnosed with a viral pneumonia of unknown origins. With community links to the Hunnan seafood market in Wuhan, the disease cluster had echoes of the severe acute respiratory syndrome coronavirus (SARS-CoV) outbreak that emerged at the beginning of the century (1). The 2019 etiologic agent was identified as a novel coronavirus, 2019-nCoV, and subsequently renamed SARS-CoV-2 (2). The new virus has nearly 80% nucleotide identity to the original SARS-CoV and the corresponding CoV disease, COVID-19, has many of the hallmarks of SARS-CoV disease including fever, breathing difficulty, bilateral lung infiltration, and death in the most extreme cases (3, 4). In addition, the most severe SARS-CoV-2 disease corresponded to old age (>50 years old), health status, and health care workers, similar to both SARS and MERS-CoV (5). Together, the results indicate SARS-CoV-2 infection and disease have strong similarity to the original SARS-CoV epidemic occurring nearly two decades earlier.

In the wake of the outbreak, major research efforts have sought to rapidly characterize the novel CoV to aid in treatment and control. Initial modeling studies predicted (6) and subsequent cell culture studies confirmed that spike protein of SARS-CoV-2 utilizes human angiotensin converting enzyme 2 (ACE2) for entry, the same receptor as SARS-CoV (7, 8). Extensive case studies indicated a similar range of disease onset and severe symptoms seen with SARS-CoV (5). Notably, less severe SARS-CoV-2 cases have also been observed and were not captured in the original SARS-CoV outbreak. Importantly, screening and treatment guidance has relied on previous CoV data generated with SARS-CoV and MERS-CoV. Treatments with both protease inhibitors and type I interferon (IFN-I) have been employed (4); similarly, remdesivir, a drug targeting viral polymerases, has been reported to have efficacy against SARS-CoV-2 similar to findings with both SARS- and MERS-CoV (9–12). Importantly, several vaccine efforts have been initiated with a focus on the SARS-CoV-2 spike protein as the major antigenic determinate (13). Together, the similarities with SARS-CoV have been useful in responding to the newest CoV outbreak.

The host Innate immune response is initiated when viral products are recognized by host cell pattern recognition receptors, including Toll-like receptors (TLRs) and RIG-I-like receptors (RLRs) (14, 15). This response ultimately results in production of IFN-I and other cytokines, which together are essential for an effective antiviral response (16). IFN-I then triggers its own signaling cascade via its receptor, in autocrine or paracrine manner, which induces phosphorylation of signal transducers and activators of transcription 1 (STAT1) and STAT2. Together, STAT1, STAT2, and a third transcription factor, IRF9, form the Interferon Stimulated Gene Factor 3 (ISGF3) complex, which is essential for induction of many IFN-stimulated genes (ISGs), and ultimately and effective antiviral response (17, 18). To establish productive replication, viruses have developed different mechanisms to escape this antiviral response targeting different parts of the IFN-I response machinery (19).

n this study, we further characterize SARS-CoV-2 and compare it to the original SARS-CoV. Using Vero E6 cells, we demonstrate that SARS-CoV-2 maintains similar viral replication kinetics as SARS-CoV following a low dose infection. In contrast, we find that SARS-CoV-2 is much more sensitive to IFN-I pretreatment as compared to SARS-CoV. Examining further, we determined that SARS-CoV-2 induces STAT1 phosphorylation and ISG expression, which is absent in SARS-CoV. Similarly, infection of IFN competent Calu3 2B4 cells resulted in reduced SARS-Cov-2 replication and STAT1 phosphorylation at late times. These results suggest distinct changes between the CoVs in terms of IFN antagonism and we subsequently examined sequence homology between the SARS-CoV and SARS-CoV-2 viral proteins that may be responsible for these differences. Together, the results suggest SARS-CoV-2 lacks the same capacity to control the IFN-I response as SARS-CoV.

Results

Our initial studies infected Vero E6 cells using a low multiplicity of infection (MOI) to explore the viral replication kinetics of SARS-CoV-2 relative to SARS-CoV. Following infection, we find that both SARS-CoV and SARS-CoV-2 replicate with similar kinetics, peaking 48 hours post infection (Fig. 1A). While SARS-CoV-2 titer had slightly lower viral titers at 24 hours post infection, the results were statistically different between the novel CoV and the original epidemic strain. By 48 hours, replication of both viruses had plateaued and significant cytopathic effect (CPE) was observed for both SARS-CoV and SARS-CoV-2 infections. Together, the results indicated that SARS-CoV and SARS-CoV-2 replicate with similar replication kinetics in Vero E6 cells.

[[ figure 1 ]]

We next evaluated the susceptibility of SARS-CoV-2 to IFN-I pretreatment. Treatment with IFN-I (recombinant IFNα) has been attempted as an antiviral approach for a wide variety of pathogens including hepatitis B and C viruses as well as HIV (20). During both the SARS and MERS-CoV outbreaks, IFN-I has been employed with limited effect (21, 22). In this study, we pretreated Vero E6 cells with 1000 units of recombinant IFN-I (IFN-α) 18 hours prior to infection. Vero E6 lack the capacity to produce IFN-I, but are able to respond to exogenous treatment (23). Following pretreatment with IFN-I, SARS-CoV infection has a modest reduction in viral titer (1.5 log plaque forming units (PFU) as compared to untreated control 24 hours post infection (Fig. 1B). However, by 48 hours, SARS-CoV has nearly equivalent viral yields as the untreated conditions (7.2 log PFU versus 7.5 log PFU). In contrast, SARS-CoV-2 shows a significant reduction in viral replication following IFN-I treatment. At both 24 and 48 hours post infection, SARS-CoV-2 had massive 3-log (24 HPI) and 4-log (48 HPI) drops in viral titer as compared to control untreated cells. Finally, we examined viral protein production finding a major deficit in nucleocapsid protein production in IFN-I treated cells following SARS-CoV-2 infection (Fig. 1C). In contrast, viral proteins were robustly expressed for SARS-CoV-2 in untreated cells and for SARS-CoV in both conditions. Together, the results demonstrate a clear sensitivity to a primed IFN-I response in SARS-CoV-2, which is not observed with SARS-CoV.

SARS-CoV-2 fails to attenuate STAT1 phosphorylation and ISG production

To explore differences in IFN-I antagonism between SARS-CoV and SARS-CoV, we examined both STAT1 activation and IFN stimulated gene (ISG) expression following IFN pretreatment and infection. Examining Vero cell protein lysates, we found that IFN-I treated cells infected with SARS-CoV-2 induced phosphorylated STAT-1 by 48 hours post infection (Fig. 2). STAT1 phosphorylation was absent in untreated cells infected with SARS-CoV-2 and suggest the novel CoV is unable to inhibit a IFN-I preprimed response. In contrast, SARS-CoV had no evidence for STAT1 phosphorylation in either IFN-I treated or untreated cells, illustrating robust control over IFN-I induction pathways. Examining further, STAT1, IFIT2, and TRIM25, known ISGs (17), had increased protein expression in the context of SARS-CoV-2 infection following IFN pretreatment (Fig. 2). Basal STAT1 and TRIM25 levels are reduced during SARS-CoV and SARS-CoV-2 infection relative to control likely due to the mRNA targeting activity of non-structural protein 1 (NSP1) (24). However, IFN-I treatment results in augmented protein levels for both ISGs following SARS-CoV-2 infection as compared to untreated control. In contrast, IFN treated SARS-CoV had no significant increase in ISG protein relative to control infection. Together, the STAT1 phosphorylation, ISG production, and viral protein levels indicate that SARS-CoV-2 lacks the same capacity to modulate a primed type I IFN response as the original SARS-CoV.

[[ figure 2 ]]

SARS-CoV-2 induces STAT1 phosphorylation in interferon competent cells

While capable of responding to exogenous type I IFN, Vero cells lack the capacity to produce type I IFN following infection which likely plays a role in robust replication of a wide range of viruses []. To evaluate SARS-CoV-2 in a type I IFN responsive cell type, we infected Calu3 2B4 cells, a lung epithelial cell line sorted for ACE2 expression and previously used in coronavirus and influenza research (25). Using an MOI of 1, we examined the viral replication kinetics of SARS-CoV-2 relative to SARS-CoV in Calu3 cells. We found that both SARS-CoV and SARS-CoV-2 replicate with similar overall kinetics, peaking 24 hours post infection (Fig. 3A). However, SARS-CoV-2 replication is slightly attenuated relative to SARS-CoV at 24 hours post infection (0.82 log reduction). The attenuation in viral replication expands at 48 hours (1.4 log reduction) indicating a significant change in total viral titers between SARS-CoV and SARS-CoV-2. Notably, no similar attenuation was observed in untreated Vero cells (Fig. 1A) suggesting possible immune modulation of SARS-CoV-2 infection.

[[ figure 3 ]]

To further evaluate type I IFN induction, we examined both STAT1 phosphorylation and ISG expression following infection of Calu3 2B4 cells at 48 hours. Examining Calu3 cell protein lysates, we found cells infected with SARS-CoV-2 induced phosphorylated STAT-1 by 48 hours post infection (Fig. 3B). These results correspond to type I IFN treated Vero cell findings (Fig. 2) and suggest that the novel CoV is unable to completely inhibit the IFN-I response. In contrast, SARS-CoV had no evidence for STAT1 phosphorylation Calu3 cells, illustrating robust control over IFN-I induction pathways. Similar to the Vero IFN pretreatment, augmented levels of total STAT1 was observed in SARS-CoV-2 relative SARS-CoV, although with not as dramatic an increase. Similarly, TRIM25 was found to be reduced in both SARS-CoV and SARS-CoV-2 indicating that both viruses disrupt host protein production, likely due to mRNA antagonism by CoV NSP1 (24). Overall, the data from Calu3 cells confirm that SARS-CoV-2 is unable to maintain similar control over the IFN-I response as SARS-CoV.


Conservation of IFN antagonists across SARS-CoV and SARS-CoV-2

Considering the sensitivity to IFN-I, we next sought to evaluate changes between SARS-CoV and SARS-CoV-2 viral proteins. Previous work has established several key IFN antagonist in the SARS-CoV genome including NSP1, NSP3, ORF3b, ORF6, and others (26). Therefore, we compared the sequence homology across viral proteins from SARS-CoV, SARS-CoV-2, and several bat SARS-like viruses including WIV16-CoV (27), SHC014-CoV (28), and HKU3.1-CoV (29). Using sequence analysis, we found several changes to SARS-CoV-2 that potentially contribute to its type I IFN sensitivity (Fig. 4). For SARS-CoV structural proteins including the nucleocapsid (N) and matrix (M) protein, a high degree of sequence homology (>90%AA identity) suggests that their reported IFN antagonism is likely maintained in SARS-CoV-2 and other SARS-like viruses. Similarly, the ORF1ab poly-protein retains high sequence identity in SARS-CoV-2 and several known antagonists contained within the poly-protein (NSP1, NSP7, NSP14-16) are highly conserved relative to SARS-CoV. One notable exception is the large papain-like proteases, NSP3, which only 76% conserved between SARS-CoV and SARS-CoV-2. However, SARS-CoV-2 does maintain a deubiquitinating domain thought to confer IFN resistance (30). For SARS-CoV ORF3b, a 154 amino acid (AA) protein known to antagonize the type I IFN responses by blocking IRF3 phosphorylation (31), sequence alignments indicates that the SARS-CoV-2 equivalent ORF3b contains a premature stop codon resulting in a truncated 24 AA protein. Similarly, HKU3.1-CoV also has a premature termination resulting in a predicted 39 AA protein. Both WIV16-CoV and SHC014-CoV, the most closely related bat viruses to SARS-CoV, encode longer 114 AA truncated protein with >99% homology with SARS-CoV ORF3b suggesting that IFN antagonism might be maintained in these specific group 2B CoV strains. In addition, SARS-CoV ORF6 has been shown to be an IFN antagonist that disrupts karyopherin transportation of transcriptions factors like STAT1 (31, 32). In contrast to ORF3b, all five surveyed group 2B CoVs maintain ORF6; however, SARS-CoV-2 had only 69% homology with SARS-CoV while the other three group 2B bat CoVs had >90% conservation. Importantly, SARS-CoV-2 has a two amino acid truncation in its ORF6; previous work has found that alanine substitution in this C-terminal of SARS-CoV ORF6 resulted in ablated antagonism (32). Together, the sequence homology analysis suggests that differences in NSP3, ORF3b, and/or ORF6 may be key drivers of SARS-CoV-2 type I IFN susceptibility.

[[ figure 4 ]]

Discussion

With the ongoing outbreak of COVID-19 caused by SARS-CoV-2, viral characterization remains a key factor in responding to the emergent novel virus. In this report, we describe differences in the IFN-I sensitivity between SARS-CoV-2 and the original SARS-CoV. While both viruses maintain similar replication in untreated Vero E6 cells, SARS-CoV-2 has a significant decrease in viral protein and replication following IFN-I pretreatment. The decreased SARS-CoV-2 replication correlates with phosphorylation of STAT1 and augmented ISG expression largely absent following SARS-CoV infection despite IFN-I pretreatment. Notably, infection of IFN competent Calu3 2B4 cells also resulted in reduced SARS-CoV-2 replication relative to SARS-CoV. This modest reduction in viral replication corresponded to STAT1 phosphorylation in SARS-CoV-2 infected Calu3 cells and indicated an inability to block type I IFN activation. the sensitivity to IFN-I is distinct from the original SARS-CoV and suggests that the novel CoV has distinct host interactions driving disease outcomes. Analysis of viral proteins finds SARS-CoV-2 has several changes that potentially impact its capacity to modulate the type I IFN response, including loss of ORF3b and a short truncation of ORF6, both known as IFN-I antagonists for SARS-CoV (31). Together, our results suggest SARS-CoV and SARS-CoV-2 have differences in their ability to antagonize the IFN-I response once initiated and that they may have major implication for COVID-19 disease and treatment.

With a similar genome organization and disease symptoms in humans, the SARS-CoV-2 outbreak has drawn insights from the closely related SARS-CoV. However, the differences in sensitivity to IFN-I pretreatment illustrate a clear distinction between the two CoVs. Coupled with a novel furin cleavage site (33), robust upper airway infection (8), and potential transmission prior to symptomatic disease (34), the differences between SARS-CoV and SARS-CoV-2 could prove important in disrupting the ongoing spread of COVID-19. For SARS-CoV, in vitro studies have consistently found that wild-type SARS-CoV is indifferent to IFN-I pretreatment (35, 36). Similarly, in vivo SARS-CoV studies have found that the loss of IFN-I signaling had no significant impact on disease (37), suggesting that this virus is not sensitive to the antiviral effects of IFN-I. However, more recent reports suggest that host genetic background may majorly influence this finding (38). For SARS-CoV-2, our results suggest that IFN-I pretreatment produces a 3 - 4 log drop in viral titer and correlates to STAT1 phosphorylation. This level of sensitivity is similar to MERS-CoV and suggests that the novel CoV lacks the same capacity to escape a primed IFN-I response as SARS-CoV (39, 40). Notably, the sensitivity to IFN-I does not completely ablate viral replication; unlike SARS-CoV 2’O methyl-transferase mutants (35), SARS-CoV-2 is able to replicate to low, detectable levels even in the presence of IFN-I. This finding could help explain positive test in patients with minimal symptoms and the range of disease observed. In addition, while SARS-CoV-2 is sensitive to IFN-I pretreatment, both SARS-CoV and MERS-CoV employ effective means to disrupt virus recognition and downstream signaling until late during infection (25). While SARS-CoV-2 may employ a similar mechanism early during infection, STAT1 phosphorylation and reduced viral replication are observed in IFN competent Calu3 indicating that the novel CoV does not as effectively block IFN-I signaling as the original SARS-CoV

For SARS-CoV-2, the sensitivity to IFN-I indicates a distinction from SARS-CoV and suggests differential host innate immune modulation between the viruses. The loss of ORF3b and truncation/changes in ORF6 could signal a reduced capacity of SARS-CoV-2 to interfere with type I IFN responses. For SARS-CoV ORF6, the N-terminal domain has been shown to have a clear role in its ability to disrupt karyopherin transport (32); in turn, the loss of ORF6 function for SARS-CoV-2 would likely render it much more susceptible to IFN-I pretreatment as activated STAT1 has the capacity to enter the nucleus and induce ISGs and the antiviral response. In these studies, we have found that following IFN-I pretreatment, STAT1 phosphorylation is induced following SARS-CoV-2 infection. The increase in ISG proteins (STAT1, IFIT2, TRIM25) suggests that SARS-CoV-2 ORF6 does not effectively block nuclear transport as well as SARS ORF6. For SARS-CoV ORF3b, the viral protein has been shown to disrupt phosphorylation of IRF3, a key transcriptional factor in the induction of IFN-I and the antiviral state (31). While its mechanism of action is not clear, the ORF3b absence in SARS-CoV-2 infection likely impacts its ability to inhibit the IFN-I response and eventual STAT1 activation. Similarly, while NSP3 deubiquitinating domain remains intact, SARS-CoV-2 has a 24 AA insertion upstream of this deubiquitinating domain that could potentially alter that function (30). While other antagonists are maintained with high levels of conservation (>90%), single point mutations in key locations could modify function and contribute to increased IFN sensitivity. Overall, the sequence analysis suggests that differences between SARS-CoV and SARS-CoV-2 viral proteins may drive attenuation in the context of type I IFN pretreatment.

The increased sensitivity of SARS-CoV-2 suggests utility in treatment using type I IFN. While IFN-I has been used in response to chronic viral infection (41), previous examination of SARS-CoV cases found inconclusive effect for type I IFN treatment (42). However, the findings from the SARS-CoV outbreak were complicated by combination therapy of type I IFN with other treatments including ribavirin/steroids and lack of a regimented protocol. While type I IFN has been utilized to treat MERS-CoV infected patients, no conclusive data yet exists to determine efficacy (43). Yet, in vivo studies with MERS-CoV has found that early induction with type I IFN can be protective in mice (44); importantly, the same study found that late type I IFN induction can be detrimental for MERS-CoV disease (44). Similarly, early reports have described treatments using type I IFN in combination for SARS-CoV-2 infection; yet the efficacy of these treatments and the parameters of their use are not known (45). Overall, sensitivity data suggest that type I IFN treatment may have utility for treating SARS-CoV-2 if the appropriate parameters can be determined. In addition, use of type III IFN, which is predicted to have utility in the respiratory tract, could offer another means for effective treatment for SARS-CoV-2.

In addition to treatment, the sensitivity to type I IFN may also have implications for animal model development. For SARS-CoV, mouse models that recapitulate human disease were developed through virus passage in immune competent mice (46). Similarly, mouse models for MERS-CoV required adaptation in mice that had genetic modifications of their dipeptidyl-peptidase 4 (DPP4), the receptor for MERS-CoV (47, 48). However, each of these MERS-CoV mouse models still retained full immune capacity. In contrast, SARS-CoV-2 sensitivity to type I IFN may signal the need to use an immune deficient model to develop relevant disease. While initial work has suggested incompatibility to SARS-CoV-2 infection in mice based on receptor usage (8), the type I IFN response may be a second major barrier that needs to be overcome. Similar to the emergent Zika virus outbreak, the use of type I IFN receptor knockout mice or type I IFN receptor blocking antibody may be necessary to develop a useful SARS-CoV-2 animal models for therapeutic testing (49).

Overall, our results indicate that SARS-CoV-2 has a much higher sensitivity to type I IFN than the previously emergent SARS-CoV. This augmented type I IFN sensitivity is likely due to changes in viral proteins between the two epidemic CoV strains. Moving forward, these data could provide important insights for both the treatment of SARS-CoV-2 as well as developing novel animal models of disease. In this ongoing outbreak, the results also highlight a distinction between the highly related viruses and suggest insights from SARS-CoV must be verified for SARS-CoV-2 infection and disease.

[[ Methods section ]]

|#

#| Scraped off of https://www.thelancet.com/action/showPdf?pii=S0140-6736%2820%2930304-4

Given the scale and rapid spread of the 2019 novel coronavirus (2019-nCoV) acute respiratory disease, there is an immediate need for medicines that can help before a vaccine can be produced. Results of rapid sequencing of 2019-nCoV, coupled with molecular modelling based on the genomes of related virus proteins, have suggested a few compounds that are likely to be effective, including the anti-HIV lopinavir plus ritonavir combination.

BenevolentAI’s knowledge graph is a large repository of structured medical information, including numerous connections extracted from scientific literature by machine learning. Together with customisations bespoke to 2019-nCoV, we used BenevolentAI to search for approved drugs that could help, focusing on those that might block the viral infection process. We identified baricitinib, which is predicted to reduce the ability of the virus to infect lung cells.

Most viruses enter cells through receptor-mediated endocytosis. The receptor that 2019-nCoV uses to infect lung cells might be ACE2, a cell-surface protein on cells in the kidney, blood vessels, heart, and, importantly, lung AT2 alveolar epithelial cells (figure). These AT2 cells are particularly prone to viral infection. One of the known regulators of endocytosis is the AP2-associated protein kinase 1 (AAK1). Disruption of AAK1 might, in turn, interrupt the passage of the virus into cells and also the intracellular assembly of virus particles.

Of 378 AAK1 inhibitors in the knowledge graph, 47 have been approved for medical use and six inhibited AAK1 with high affinity. These included a number of oncology drugs such as sunitinib and erlotinib, both of which have been shown to inhibit viral infection of cells through the inhibition of AAK1. However, these compounds bring serious side-effects, and our data infer high doses to inhibit AAK1 effectively. We do not consider these drugs would be a safe therapy for a population of sick and infected people.

By contrast, one of the six high-affinity AAK1-binding drugs was the janus kinase inhibitor baricitinib, which also binds the cyclin G-associated kinase, another regulator of endocytosis. Because the plasma concentration of baricitinib on therapeutic dosing (either as 2 mg or 4 mg once daily) is sufficient to inhibit AAK1, we suggest it could be trialled, using an appropriate patient population with 2019-nCoV acute respiratory disease, to reduce both the viral entry and the inflammation in patients, using endpoints such as the MuLBSTA score, an early warning model for predicting mortality in viral pneumonia.

Figure: Viral entry via clathrin-mediated endocytosis
The virus binds through its spike protein to ACE2 on the surface of AT2 epithelial cells (1), which induces activation of clathrin-mediated endocytosis. AAK1- and GAK-mediated phosphorylation of clathrin adapter proteins (2) starts the assembly of the clathrin cage around the enclosed virus, before it is pinched off and trafficked to endosomes (3). Inhibition of AAK1 and GAK by baricitinib thereby inhibits virus entry. SARS-CoV-2 severe acute respiratory syndrome coronavirus 2.
|#

(defun cov-reactome ()
  (p "Severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2) is a strain of the species severe acute respiratory syndrome-related coronavirus (SARSr-CoV). It belongs to the family Coronaviridae which are a family of enveloped, positive-sense, single-stranded RNA viruses. SARS-CoV-2 likely originated from a bat coronavirus, to which it has a close genetic similarity. A highly contagious disease in humans, transmission occurs via liquid droplets from coughs or sneezes in a range of around 2 metres. SARS-CoV-2 is the cause of the ongoing pandemic of coronavirus disease 2019"))

(defun yellow-fever ()
  (p "Yellow fever, a mosquito-borne flavivirus, was inescapable in the 19th-century Deep South and a point of near-constant terror in New Orleans, the region’s hub. In the six decades between the Louisiana Purchase and the Civil War, New Orleans experienced 22 full-blown epidemics, cumulatively killing over 150,000 people. (Perhaps another 150,000 died in nearby American cities.) The virus killed about half of all those it infected and it killed them horribly, with many victims vomiting thick black blood, the consistency and color of coffee grounds. The lucky survivors became “acclimated,” or immune for life."))

;; From David Mudd, guest column in the Arlington Advocate 4/9/20
(defun mudd-p1 ()
  (p "The COVID-19 epidemic started in Wuhan China in late December at a market where live bats and other wild animals are sold along with chickens and pigs. The virus transformed into a new and dangerous virus in humans, spreading like wildfire as no one has immunity to the virus and there are no proven treatments."))
(defun mudd-p2 ()
  (p "The virus is highly contagious, spread by respiratory droplets from coughing sneezing and breathing. We contaminate our fingers from touching the moth and nose and then all manner of surfaces. Others touch those surfaces and then become infected from touching their noses and mouths. The virus can stay contagious on plastic and metal for several days unless destroyed with 60 percent alcohol or various detergents. Thorough hand washing is a very effective method of preventing the virus from spreading."))

;;----- Brent's texts selected from article-preview-8
#|
(p/s "HPAI virus and MERS-CoV induce repressive histone modifications, which downregulate expression of ISG subsets.")

(p/s "Notably, influenza A virus NS1 appears to play a central role in this histone-mediated downregulation")

(p/s "NS1 contributes to ISG control via altered histone methylation")

(p "H1N1-09 quickly and robustly induced the majority (97%) of ISGs")


(p "However, H5N1-VN1203 induced robust induction in only 35% of the consensus annotated ISGs")

(p "several ISGs showed only minimal, if any, stimulation (e.g., TLR3, SERPIN1), and ACE2")

(p "H1N1-09, the limited control of ISG RNA expression also manifested in robust ISG protein production; 27 ISG proteins were among 530 significantly upregulated host proteins")

(p "H5N1-VN1203 infection had reduced protein expression of both STAT1 (27.4% decrease at 24 hpi) and PKR (28.5% decrease at 18 hpi) relative to that of mock; similarly, MERS-CoV reduced the protein level of STAT1 (15.8% decrease at 18 to 24 hpi) and PKR (20.2% decrease at 18 to 24 hpi). In contrast, both proteins were significantly increased following both H1N1-09 and SARS-CoV infection")

(p "both H5N1-VN1203 and H1N1-09 infection resulted in robust transcription of type I and type III IFN molecules (Fig. 2A); IFN-β1, IFN-α5, and IFN-λ1 were each strongly induced in both influenza strains.")

;;(cid:3) = beta
;;(cid:2) = alpha
;;(cid:4) = lambda

[[ can't find the prior one in the source ]]

(p "CoV infections more tightly block recognition and/or disrupt IFN induction.")

(p "The results indicated that CXCL10 and IFIT1, highly expressed ISGs following H5N1-VN1203 infection (Fig. 3A), had a corresponding increase in STAT1 binding in their 5' promoter region at 12 hpi (Fig. 3B). In contrast, CFHR1 and APOL6, ISGs with decreased expression, had no increase in STAT1 binding despite the presence of activated STAT1 in those cells.")

(p "the repressive H3K27me3 revealed enhanced association with CFHR1, DDX58, and SMAD9L during H5N1-VN1203 infection")

(p/s "both MERS-CoV and SARS-CoV maintain delayed IFN induction")

(p "two genes (TLR3 and CFHR1) downregulated in both H5N1-VN1203 and MERS-CoV, but not SARS-CoV infection")

(p "DDX58, a gene downregulated by H5N1-VN1203 but not MERS-CoV")

(p "Having established NS1 as a required component for strong ISG manipulation and downregulation")

(p "mutations in PB1-F2 and PB2 resulted in significant ISG augmentation, the majority of ISGs maintain low or downregulated expression")

(p/s "NS1 truncation halted ISG downregulation by H5N1-VN1203")

(p "ORF4b, a MERS accessory protein with no homologue in SARS-CoV, maintains a purported nuclear localization signal, exhibits nuclear localization based on transfection, and may play a role in IFN antagonism")


;;--- Brent's excerpts from 2020.03.24

(p "SARS-CoV-2 elicits a muted response  that  lacks  robust  induction  of  a  subset  of  cytokines  including  the  Type  I  and  Type  III  interferons as well as a numerous chemokines.")

(p "SARS-CoV-2  infection  shows  a  significant  lack of Type I and III interferon (IFN-I and IFN-III) expression")

(p "A  highly  interacting  cluster  enriched  in  genes  involved  in  the  cellular  response  to  virus  infection  (GO:0009615, FDR << 0.0001), mainly composed of type-I ISGs (GO:0034340, FDR <<  0.0001),  and  a  second  cluster  enriched  in  genes  involved  in  the  humoral  immune  response  (GO:0006959,  FDR  <<  0.0001),  which  further  subdivided  into  two  smaller  clusters  enriched  in  chemokines  and  cytokines  (GO:0005125,  FDR  <  0.001),  and  complement  proteins  (GO:0006956,  FDR  <  0.0005)")

(p "we  observe  the  induction  of  well-characterized  direct  effectors  of  the  innate  immune  response  including:  MX1,  IFITM3,  SAMHD1  and  TRIM25,  as  well  as  the  induction  of  viral  RNA  sensors  such  as  RIG-I  and  the  OAS1-3  genes")

(p/s "SARS-CoV-2  lacks  the  induction  of  IFN-I  and  IFN-III  genes")

(p/s "two  cytokines  (EDN1  and  TNFSF15)  were  uniquely upregulated")

(p "Despite  the  apparent  muted  induction  of  antiviral  genes  in  response  to  SARS-CoV-2,  we do observe a significant up regulation of well-characterized ISGs including: IFIT1-3, ISG15,  DDX58,  and  others.")

(p "Amongst  the  genes  that  are  uniquely  present  when  comparing  SARS-CoV-2  to  other  respiratory  viruses  are  EDN1  and  TNFSF15  -  two  putative biomarkers that may contribute to COVID-19 pathology.")
|#

;;---- Scott's 11/21/17 paragraphs to illustrate interesting DefNP anaphora
;; Lifted from Reactome curators descriptions

(defun scott-1 ()
  (p "In mammals there are three AKT isoforms (AKT1-3) encoded by
three separate genes. The three isoforms share a high degree of
amino acid identity and have indistinguishable substrate specificity
in vitro. However, isoform-preferred substrates in vivo cannot
be ruled out. The relative expression of the three isoforms
differs in different mammalian tissues: AKT1 is the predominant
isoform in the majority of tissues, AKT2 is the predominant isoform
in insulin-responsive tissues, and AKT3 is the predominant isoform
in brain and testes. All 3 isoforms are expressed in human and
mouse platelets (Yin et al. 2008; O'Brien et al. 2008)."))

(defun scott-2 ()
  (p "Nuclear MAPKs may also be inactivated by nuclear forms of class III DUSPs, 
including DUSP8, 10 and 16, although the preferred substrate of these enzymes 
are the p38 and JNK MAP kinases (reviewed in Bermudez et al, 2010; Kondoh and 
Nishida, 2007)."))

(defun scott-3 ()
  (p "RAF1 is phosphorylated by activated MAPK at 6 serine residues (S29, 
S43, S289, S296, S301 and S642). MAPK-dependent hyperphosphorylation 
of RAF1 abrogates the ability of activated RAF1 to interact with RAS 
and is coincident with inactivation of RAF1. RAF1 proteins containing 
mutation of these phosphorylation sites persist at the plasma membrane, 
show sustained S338 phosphorylation and persistent activation 
relative to WT RAF1 protein."))

(defun scott-4 ()
  (p "Activated MAPK proteins negatively regulate MAP2K1:MAP2K2 heterodimers 
by phosphorylating MAP2K1 at T292, a residue that is not present in MAP2K2. 
Phosphorylation of this site in MAP2K1 promotes the dephosphorylation of 
the MAP2K phosphorylated activation loop (AL) by an unknown mechanism, 
establishing a negative feedback loop that limits MAPK signaling (Catalanotti et al, 
2009; Brunet et al, 1994; Xu et al, 1999). 
Deletion of MAP2K1 or mutation of this site prolongs MAP2K2 AL phosphorylation 
and MAPK activation (Catalanotti et al, 2009)."))


;;--- Brent

(defun brent-CaM-Ras ()
  (p "Fine tuning of Ras activity is widely known as a mechanism to induce
different cellular responses. Recently, we have shown that calmodulin (CaM)
binds to K-Ras and that K-Ras phosphorylation inhibits its
interaction with CaM. In this study we report that CaM inhibits K-Ras
phosphorylation at Ser181 by protein kinase C (PKC) in vivo, and this is
a mechanism to modulate K-Ras activity and signaling. Although CaM
inhibition increased the activation of endogenous K-Ras, PKC inhibition
decreased its activation status. We demonstrate that K-Ras
phosphorylation decreased susceptibility to p120GAP activity.
Accordingly, we also observed that non-phosphorylable K-Ras mutant
exhibits a less sustained activation profile and do not efficiently
activate AKT at low growth factor doses compared with wild-type K-Ras.
It is interesting that the physiological responses induced by K-Ras are
affected by this phosphorylation; when K-Ras cannot be phosphorylated it
exhibits a remarkably decreased ability to stimulate proliferation in
non-saturated serum conditions. Finally, we demonstrate that
phosphorylation also regulates oncogenic K-Ras functions, as focus
formation capacity, mobility and apoptosis resistance upon adriamycin
treatment of cells expressing oncogenic K-Ras that cannot be
phosphorylated are highly compromised. Moreover, at low serum
concentration proliferation and survival is practically inhibited when
cells cannot phosphorylate oncogenic K-Ras. In this condition, K-Ras
phosphorylation is essential to ensure a proper activation of
mitogen-activated protein kinase and PI3K/AKT pathways. In summary, our
findings suggest that the interplay between CaM interaction and PKC
phosphorylation is essential to regulate non-oncogenic and oncogenic
K-Ras activity and functionality."))


(defun mapk-sites ()
  ;; From results section of January ASPP2 article, first paragraph
  ;; of the section "ASPP2 is a novel substrate of MAPK"
  (p "Interestingly, we observed two conserved putative MAPK 
phosphorylation sites in ASPP1 and ASPP2. 
The ASPP1 sites are at residues 671 and 746, 
and the ASPP2 sites are at residues 698 and 827."))

(defun figure-7 ()
  ;; of Turke et al. "MKE inhibition leads ..."
  ;; Caption of figure seven  on page 20 minus the portion in bold
  (p "In untreated cells, EGFR is phosphorylated at T669 by MEK/ERK,
which inhibits activation of EGFR and ERBB3. In the presence of AZD6244,
ERK is inhibited and T669 phosphorylation is blocked, increasing
EGFR and ERBB3 tyrosine phosphorylation and up-regulating downstream signaling."))

(defun empty-this-mutant () ;; for ticket 12
  ;; it's p85<alpha> though its not rinting like one
  (p "Thus, we introduced the same mutations (R358A and R649A in 
the FLVRD/E motif of each of the SH2 domains of p85ﰀ) to generate 
the EGFP–p85ﰀ RARA mutant. As expected, although this mutant 
bound the PI 3-kinase p110 catalytic sub- unit normally, 
it could no longer bind tyrosine-phosphorylated IRS-1 
after IGF-1 stimulation."))

(defun cells-defNP ()
  ;; from the December passages, sentences 17 and 18
  (p "BRAF is not active and is not required for MEK/ERK activation
in RAS mutant cells.
Nevertheless, BRAF inhibitors hyperactivate CRAF and MEK in these cells."))


#| From Reactome. Nice conjunctions. Removed the referents
   also good of a statement about RAF being refined to BRAF. 
"Activated RAF phosphorylates the MEK kinases MAP2K1 and MAP2K2 
on 2 serine residues in the MAP2K activation loop (S218 and S222 in MAP2K1 
and S222 and S226 in MAP2K2. 
Although all three RAF kinases can phosphorylate MAP2K1 and MAP2K2, 
BRAF appears to be the primary activator in vivo."
|#

#| Reactome http://www.reactome.org/PathwayBrowser/#DIAGRAM=177929&ID=179467&PATH=162582
  "Gab1 binds phosphatidylinositol-3,4,5-trisphosphate"
  "The pleckstrin homology (PH) domain of GAB1 binds to PIP3 and 
   can target GAB1 to the plasma membrane in response to 
   EGF stimulation. This mechanism provides a positive feedback loop
   with respect to PI3K activation, to enhance EGFR signalling."
|#

#| From Reactome. Descrption of "SPRED dimer binds NF1"
Sprouty-related proteins (SPRED) 1, 2 and 3 are negative regulators
of the MAPK pathway that act at least in part by recruiting
the RAS GAP protein neurofibromin 1 (NF1) to the plasma membrane
(Kato et al, 2003; King et al, 2006; Stowe et al, 2012).
NF1, a negative regulator of RAS is a tumor suppressor that is mutated
in the familial cancer syndrome neurofibromatosis I as well as
in sporadic cases of glioblastoma, non-small cell lung cancers,
neuroblastoma and melanoma (Martin et al, 1990; Bollag et al, 1996;
reviewed in Bollag and McCormick, 1992; Maertens and Cichowski, 2014).

Plasma membrane-association of the SPRED proteins themselves depends on
the C-terminal SPR domain. Mutations in this region abrogate membrane localization
of the protein (King et al, 2005; Stowe et al, 2012).
Membrane association may also be promoted by interaction of the SPRED proteins
with RAS (Wakioka et al, 2001).
Interaction with NF1 is mediated by the SPRED EVH1 domain, and mutations
in this region affect both NF1 recruitment and the ability of SPRED and NF1 proteins
to negatively regulate RAS pathway activity (Stowe et al, 2012;
reviewed in McClatchey and Cichowski, 2012).
|#

;; Another Reactome example. MAB's emai of 8/24/15 13:04
(defun inactive-ras ()
  (p "Inactive p21ras:GDP is anchored to the plasma membrane by a farnesyl
residue. Insulin stimulation results in phosphorylation of IRS1/2 on
tyrosine residues. GRB2 binds the phosphotyrosines via its SH2 domain.
As IRS is phosphorylated by the insulin receptor near to the plasma
membrane, the GRB2:SOS1:IRS interaction brings SOS1 and p21 Ras into
close proximity."))

;;; The Ubiquitous Co-Reference Problem
#|
http://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.0030011
;; Title
A Signaling Pathway Involving TGF-β2 and Snail in Hair Follicle Morphogenesis.
;; sentence 5
We found that transforming growth factor β2 signaling 
is necessary to transiently induce the transcription factor Snail 
and activate the Ras-mitogen-activated protein kinase (MAPK) pathway 
in the bud.
;; sentence 9
This novel signaling pathway further weaves together the web of 
different morphogens and downstream transcriptional events that 
guide hair bud formation within the developing skin.
;; sentence 32
α-Catenin also binds to the class III Lin-1, Isl-1, Mec-3 (LIM) 
protein Ajuba (a member of the zyxin family of proteins), 
which appears to function dually in both adhesion and 
in activation of the Ras-mitogen-activated protein kinase (MAPK) pathway.
;; sentence 127
If the competition between Grb-2/Sos and α-catenin for Ajuba 
is functionally relevant to the hyperproliferative state 
of a keratinocyte, then overexpression of Ajuba would be expected 
to bypass the competition and promote activation of the Ras-MAPK pathway 
in WT keratinocytes. 
;; sentence 133
These data suggested that by elevating cytosolic Ajuba levels, 
Ajuba's pre-LIM domain may associate with Grb-2/Sos in a manner 
that stimulates its nucleotide exchange activity and leads to 
activation of the Ras-MAPK pathway.
;; sentence 134
Although this pathway provides one mechanism by which Snail expression 
and proliferation may be coupled in skin epithelium, proliferative 
circuitries involving AJs are known to be complex 
and often interwoven.
;; sentence 176
Thus, although the pathway mediated by TGF-β2 signaling impacts 
the earliest step of epithelial invagination, 
it does not appear to be essential for bud morphogenesis. 
;; Discussion, P2 sentence 192
Further investigation will be required to determine whether 
the signaling pathway we have elucidated here is a theme 
with multiple variations.  |#

;;  (p *brent-story*)
(defparameter *brent-story*
"Ras is a membrane bound protein.
When inactive, it is bound to the small molecule GDP.
Upon growth factor stimulation of the cell, an exchange factor,
such as the SOS protein,
causes Ras to release GDP and Ras will now bind to GTP.
Binding to GTP causes a conformational change of the Ras protein
that puts Ras into the active state.
GTP-bound Ras binds to the Raf protein kinase.
This binding of Raf to Ras has the effect of
activating the Raf kinase
and localizing the Raf kinase to the cell membrane.
Activated Raf now phosphorylates and activates the Mek1 kinase.
The Mek1 kinase then phosphorylates the ERK kinase
on both threonine and tyrosine residues
which activate ERK kinase activity.
The phosphorylated ERK protein then translocates to the nucleus
where it regulates gene expression
in part by phosphorylating the Elk1 transcription factor.
Phospho-Elk then upregulates the gene expression of target genes
such as the proto-oncogene c-fos.
The entire signaling cascade is terminated by
the intrinsic GTPase activity of Ras
which hydrolyzes the bound GTP into GTP,
thus returning Ras to the GDP bound state
where it releases bound Raf.
The GTPase activity of Ras is accelerated
by interaction with another protein called GAP.
The oncogenic Rasv12 mutant has diminished GTPase activity
and therefore stays in the active GTP bound state constitutively.
Deletion of GAP or the related NF1 genes will also enhance Ras activity
by slowing the rate of Ras-GTP hydrolysis.")



(defun russ ()
  (p "Importantly, the association between β-Trcp and β-catenin depended on
the four serine/threonine residues at the amino terminus of β-catenin,
as β-catenin (S→A), which is a mutant β-catenin with alanine substitutions
 of these serine/threonine residues (see Fig.4A),
completely lost the ability to associate with β-Trcp (Fig. 1 A and B)."))
#| Very first pass after translating the arrow as a hyphen


Unpacking #<word "substitution">
  it is an unambiguous noun
Unpacking #<word "see">
  it is ambiguous between (noun verb)
Unpacking #<word "lose">
  it is an unambiguous verb
[importantly], [ the association] between [ β-trcp and β-catenin]
[ depended] on [the four serine/threonine residues] at
[ the] amino [ terminus] of [ β-catenin],
as [ β-catenin] (s-a), which [ is][ a mutant β-catenin]
with [ alanine substitutions] of [ these serine/threonine residues]
(see fig.4a), [completely lost][ the ability] to [ associate] with [ β-trcp]

                    source-start
e132  ADVERB        1 "importantly ," 3
e102  BIO-ASSOCIATE 3 "the association" 5
e131  BETWEEN       5 "between β - trcp and β - catenin" 13
e130  DEPEND        13 "depended on the four serine / threonine residues" 21
e128  AT            21 "at the" 23
e25                 "amino"
e26 e27             "terminus" :: #<word "terminus">, PROTEIN-TERMINUS
e127  OF            25 "of β - catenin" 29
e32                 "COMMA"
e126  AS            30 "as β - catenin ( s - a ) , which is a mutant β - catenin" 47
e121  WITH          47 "with alanine substitutions" 50
e120  OF            50 "of these serine / threonine residues ( see fig . 4 a )" 63
e72                 "COMMA"
e111  LOSE          64 "completely lost" 66
e119  ABILITY       66 "the ability to associate with β - trcp ( fig . 1 a and b )" 82
                    period
                    end-of-source
|#

;;----- phrases from the 12/3/14 Darpa trainng data
;
; (p "at Lys residues 104 and 147 of K-Ras, and Lys residues 117, 147 and 170 for H-Ras.")

;; "J" for Julie

(defun j1 ()
  (p "The most frequently mutated oncogenes in the deadliest cancers responsible for human mortality are KRAS, PIK3CA and BRAF."))
#|
[the most frequently mutated oncogenes] in [ the deadliest cancers]

[ responsible] for [ human mortality][ are][ kras, pik3ca and braf]
e35   BE   1 "the most frequently mutated oncogenes in the deadliest cancers responsible for human mortality are kras , pik 3 ca and braf" 22
           period
5/26/15
e28   ONCOGENE      1 "the most frequently mutated oncogenes" 6
e34   IN            6 "in the deadliest cancers responsible" 11
e32   FOR           11 "for human mortality" 14
e17   BE            14 "are" 15
e24   PROTEIN       15 "kras , pik 3 ca and braf" 22
 |#

(defun j2 ()
  (p "Importantly the signaling enzymes encoded by PIK3CA and BRAF are, in part, regulated by direct binding to activated forms of the Ras proteins suggesting that dysregulation of this key step in signaling is critical for tumor formation. "))
#|  5/26/15
[importantly][ the signaling enzymes][ encoded] by [ pik3ca and braf]
[ are, in part, regulated] by [ direct binding] to [ activated][ forms]
of [ the ras proteins][ suggesting] that [ dysregulation] of [ this key step]
 in [ signaling][ is critical] for [ tumor formation]

e0    IMPORTANTLY   1 "importantly" 2
e55   ENZYME        2 "the signaling enzymes" 5
e5    ENCODE        5 "encoded" 6
e72   BY            6 "by pik 3 ca and braf" 12
e71   REGULATE+ED   12 "are , in part , regulated by direct binding" 21
e22 e23             "to" :: #<word "to">, TO
e24   BIO-ACTIVATE  22 "activated" 23
e69   FORM          23 "forms of the ras proteins" 28
e32   SUGGEST       28 "suggesting" 29
e33 e34             "that" :: #<word "that">, THAT
e67   DYSREGULATE   30 "dysregulation of this key step" 35
e65   IN            35 "in signaling" 37
e63   CRITICAL      37 "is critical" 39
e64   FOR           39 "for tumor formation" 42

|#

(defun j3 ()
  (p "Ras acts as a molecular switch that is activated upon GTP loading and deactivated upon hydrolysis of GTP to GDP."))
#|  [ras][ acts] as [ a molecular switch] that [ is activated]
upon [ gtp loading] and [ deactivated] u
pon [ hydrolysis] of [ gtp] to [ gdp]

e31   ACT                     1 "ras acts as a molecular switch" 7
e9                               "that"
e33   ACTIVATE                8 "is activated upon" 11
e30   LOAD                    11 "gtp loading" 13
e16 e17                          "and" :: and, AND
e32   DEACTIVATE              14 "deactivated upon" 16
e28   HYDROLYSIS              16 "hydrolysis of gtp to gdp" 21

5/26/15
e40   BIO-ACT       1 "ras acts" 3
e39   AS            3 "as a molecular switch that is activated upon gtp loading" 13
e16   AND           13 "and" 14
e17   DEACTIVATE    14 "deactivated" 15
e34   UPON          15 "upon hydrolysis of gtp to gdp" 21
|#

(defun j4 ()
  (p "This switch mechanism is common to a wide variety of GTP-binding proteins and is mediated by a conserved structure called the G-domain that consists of five conserved G boxes."))
#| [this switch mechanism][ is][ common] to [ a wide variety] of [ gtp-binding proteins]
   and [ is mediated] by [ a conserved structure][ called][ the g-domain][ that consists] of
   [ five conserved g boxes]
Hits new cases in the second pass, but before that we got:
e45   BE                      1 "this switch mechanism is" 5
e6 e7                            "common" :: common, MODIFIER
e51   TO                      6 "to a wide variety" 10
e47   OF                      10 "of gtp - binding proteins" 15
e21 e22                          "and" :: and, AND
e50   MEDIATE+ED              16 "is mediated by a conserved structure" 22
e48   CALL                    22 "called the g - domain" 27
e36                              "that"
e37   CONSISTS                28 "consists" 29
e46   OF                      29 "of five conserved g boxes" 34
                                period
5/26/15
e66   COMMON        1 "this switch mechanism is common to a wide variety" 10
e63   OF            10 "of gtp - binding" 14
e18   PROTEIN       14 "proteins" 15
e19   AND           15 "and" 16
e54   MEDIATE+ED    16 "is mediated" 18
e62   BY            18 "by a conserved structure" 22
e30   CAL           22 "called" 23
e57   BIO-ENTITY    23 "the g - domain" 27
e36 e37             "that" :: #<word "that">, THAT
e38   CONSIST       28 "consists" 29
e61   OF            29 "of five conserved g boxes" 34
                    period
|#

(defun j5 ()
  (p "Under physiological conditions, the rate of GDP or GTP release from the G-domain is slow."))
#|
under [ physiological conditions], [ the rate] of [
 gdp or gtp][ release] from [ the g-domain][ is slow]

e24   UNDER                   1 "under physiological conditions" 4
e4                               "COMMA"
e30   RATE-OF-PROCESS         5 "the rate of gdp or gtp release from the g - domain is slow" 19
                                 period
5/26/15
e30   UNDER         1 "under physiological conditions" 4
e5                  "COMMA"
e25   PROCESS-RATE  5 "the rate" 7
e29   OF            7 "of gdp or gtp" 11
e14   MOLECULE-RELEASE  11 "release" 12
e28   FROM          12 "from the g - domain" 17
e27   QUALITATIVE-RATE  17 "is slow" 19
 |#

(defun j6 ()
  (p "As a consequence the GDP produced by GTP hydrolysis on Ras is trapped and the bulk of cellular Ras accumulates in the GDP-bound ‘off’ state, despite the high GTP/GDP ratio in the cytosol (1–3)."))
#| [as a consequence][ the gdp][ produced] by [ gtp hydrolysis] on [ ras]
[ is trapped] and [ the bulk] of [ cellular ras][ accumulates] in
[ the gdp-bound] 'off' [ state], despite [ the high gtp/gdp ratio] in [ the cytosol]
5/26/15
e1    AS A CONSEQUENCE  1 "as a consequence" 4
e57   NUCLEOTIDE    4 "the gdp" 6
e5    PRODUCE       6 "produced" 7
e76   BY            7 "by gtp hydrolysis on ras" 12
e59   TRAP          12 "is trapped" 14
e15   AND           14 "and" 15
e61   BULK-KIND     15 "the bulk" 17
e73   OF            17 "of cellular ras" 20
e24   ACCUMULATION  20 "accumulates" 21
e72   IN            21 "in the gdp - bound" 26
e71   OFF           26 "' off ' state" 30
e36                 "COMMA"
e37   DESPITE       31 "despite" 32
e70   RATIO         32 "the high gtp / gdp ratio in the cytosol ( 1 - 3 )" 46
                    period

|#

(defun j7 ()
  (p "Growth factors can turn on Ras by activating Guanine nucleotide Exchange Factors (GEFs) or by inhibiting the GTPase Activating Proteins (GAPs) or by both mechanisms."))
#|
[growth factors][ can turn] on [ ras] by [ activating][ guanine nucleotide
exchange factors] (gefs) or by [ inhibiting][ the gtpase activating proteins]
(gaps) or by [ both mechanisms]

    Fix comma-delimited-list to write a better edge so it will print nicely.
    Make 'both' active
e46   TURN                    1 "growth factors can turn on ras by activating guanine nucleotide exchange factors ( gefs ) or by inhibiting the gtpase activating proteins ( gaps ) or by both mechanisms" 30
e34                              "PERIOD"

5/26/15
e41   TURN-ON       1 "growth factors can turn on ras" 7
e43   BY            7 "by activating guanine nucleotide exchange factors ( gefs ) or by inhibiting the gtpase activating proteins ( gaps ) or by both mechanisms" 30
|#

(defun j8 ()
  (p "RasGEFs bind to Ras and lower the transition energy for the nucleotide exchange of the bound GDP for the more abundant cytosolic GTP, whereas RasGAPs bind to Ras and catalyze GTP hydrolysis. "))
#|  [rasgefs][ bind] to [ ras] and [ lower][ the transition] energy
for [ the nucleotide exchange] of [ the bound gdp] for
[ the more abundant cytosolic gtp], whereas [ rasgaps][ bind] to
[ ras] and [ catalyze][ gtp hydrolysis]

e63   BINDING       1 "rasgefs bind to ras" 5
e5    AND           5 "and" 6
e6    LOWER         6 "lower" 7
e44   TRANSITION    7 "the transition" 9
                    "energy"
e60   FOR           10 "for the nucleotide exchange" 14
e59   OF            14 "of the bound gdp" 18
e58   FOR           18 "for the more abundant cytosolic gtp" 24
e31                 "COMMA"
e32   WHEREAS       25 "whereas" 26
e57   BINDING       26 "rasgaps bind to ras" 30
e38   AND           30 "and" 31
e54   CATALYSIS     31 "catalyze gtp hydrolysis" 34
|#

(defun j9 ()
  (p "The most prevalent oncogenic mutations in Ras (Gly12 and Gly13 in the G1 box, and Gln61 in the G3 box) preserve the GTP bound state by inhibiting intrinsic GTPase activity and by interfering with the ability of GAPs. "))
#|  [the most prevalent oncogenic mutations] in [ ras] (gly12 and gly13 in the g1 box,
 and gln61 in the g3 box) [ preserve][ the gtp][ bound][ state]
 by [ inhibiting][ intrinsic gtpase activity] and by [ interfering] with [ the ability] of [ gaps]
5.26/15
e98   MUTATE        1 "the most prevalent oncogenic mutations in ras ( gly 12 and gly 13 in the g 1 box , and gln 61 in the g 3 box )" 29
e38   PRESERVE      29 "preserve" 30
e96   BINDING       30 "the gtp bound state by inhibiting intrinsic gtpase activity" 39
e51   AND           39 "and" 40
e91   BY            40 "by interfering" 42
e90   WITH          42 "with the ability of gaps" 47
                    period

|#
(defun j10 ()
  (p "Other less frequently observed mutations, such as those found in the G4 and G5 boxes, increase the rate of nucleotide exchange, thereby mimicking the GEFs and increasing the GTP-bound state (1–7)."))
#|  [other less frequently observed mutations], such as [ those found] in [ the g4 and g5 boxes],
[ increase][ the rate] of [ nucleotide exchange],
[ thereby mimicking][ the gefs] and [ increasing][ the gtp-bound state]
5/26/15
e54   MUTATE        1 "other less frequently observed mutations" 6
e5                  "COMMA"
e70   SUCH AS       7 "such as those found" 11
e69   IN            11 "in the g 4 and g 5 boxes" 19
e21                 "COMMA"
e68   INCREASE      20 "increase the rate of nucleotide exchange" 26
e31                 "COMMA"
e60   MIMICK        27 "thereby mimicking" 29
e61   PROTEIN       29 "the gefs" 31
e37   AND           31 "and" 32
e65   INCREASE      32 "increasing the gtp - bound state ( 1 - 7 )" 43
                    period

|#

(defun d1 () ;; "d" for Denver
  (p "Mitogen-induced signal transduction is mediated by a cascade of protein phosphorylation and dephosphorylation."))
(defun d2 ()
  (p "One of the immediate responses of mitogen stimulation is the activation of a family of protein kinases known as mitogen-activated protein kinase or extracellular signal-regulated kinase (ERK)."))
(defun d3 ()
  (p "MEK (MAP kinase or ERK kinase) is the immediate upstream activator kinase of ERK."))
(defun d4 ()
  (p "Two cDNAs, MEK1 and MEK2, were cloned and sequenced."))
(defun d5 ()
  (p "MEK1 and MEK2 encode 393 and 400 amino acid residues, respectively."))
(defun d6 ()
  (p "The human MEK1 shares 99% amino acid sequence identity with the murine MEK1 and 80% with human MEK2."))
(defun d7 ()
  (p "Both MEK1 and MEK2 were expressed in Escherichia coli and shown to be able to activate recombinant human ERK1 in vitro."))
(defun d8 ()
  (p "The purified MEK2 protein stimulated threonine and tyrosine phosphorylation on ERK1 and concomitantly activated ERK1 kinase activity more than 100-fold."))
(defun d9 ()
  (p "The recombinant MEK2 showed lower activity as an ERK activator as compared with MEK purified from tissue."))
(defun d10 ()
  (p "However, the recombinant MEK2 can be activated by serum-stimulated cell extract in vitro."))
(defun d11 ()
  (p "MEKs, in a manner similar to ERKs, are likely to consist of a family of related proteins playing critical roles in signal transduction."))


;; 8/30/14
#| 8. Growth factors can turn on Ras by activating Guanine nucleotide
Exchange Factors (GEFs) or by inhibiting the GTPase Activating
Proteins (GAPs) or by both mechanisms. |#
; (p "Growth factors can activate Ras by activating Guanine nucleotide Exchange Factors (GEFs) or by inhibiting the GTPase Activating Proteins (GAPs) or by both mechanisms.")
;; /// substitute "activate" for "turn on" so can develop the
;; island forest parser without having to fix the problems with the
;; present verb+prep treatment first.
; (p "Growth factors can activate Ras by activating Guanine nucleotide Exchange Factors or by inhibiting the GTPase Activating Proteins or by both mechanisms.")
;; /// pull out the parentheses because something is inhibiting their interior's analysis


;; 7/9/14
; (p "Phosphorylated Ser1507 on APC can prime a phosphorylation of Ser1503 by GSK-3. This scheme accounts for the presence of the six phosphates found in the mass spectroscopic analysis of in vitro-phosphorylated R3.")
; (p "Phosphorylated Ser1507 on APC can prime a phosphorylation of Ser1503 by GSK-3.")
; (p "This scheme accounts for the presence of the six phosphates found in the mass spectroscopic analysis of in vitro-phosphorylated R3.")


;; From 15677466
(defvar *pc* "The processing of the nfκb2 gene product p100 to generate p52 is a regulated event, which is important for the instrumental function of NF-κB. We previously demonstrated that this tightly controlled event is regulated positively by NF-κB-inducing kinase (NIK) and its downstream kinase, IκB kinase α (IKKα).
However, the precise mechanisms by which NIK and IKKα induce p100 processing remain unclear.
Here, we show that, besides activating IKKα, NIK also serves as a docking molecule recruiting IKKα to p100.
This novel function of NIK requires two specific amino acid residues, serine 866 and serine 870, of p100 that are known to be essential for inducible processing of p100.
We also show that, after being recruited into p100 complex, activated IKKα phosphorylates specific serines located in both N- and C-terminal regions of p100 (serines 99, 108, 115, 123, and 872).
The phosphorylation of these specific serines is the prerequisite for ubiquitination and subsequent processing of p100 mediated by the β-TrCP ubiquitin ligase and 26 S proteasome, respectively.
These results highlight the critical but different roles of NIK and IKKα in regulating p100 processing and shed light on the mechanisms mediating the tight control of p100 processing.
These data also provide the first evidence for explaining why overexpression of IKKα or its activation by many other stimuli such as tumor necrosis factor and mitogens fails to induce p100 processing."
  "target paragraph for proposal")

(defun kappa-1 ()
  ;; Rewrite of *pc* without the greek letters to get around 4/19 wierdness
  (p "The processing of the nfkappab2 gene product p100 to generate p52 is a regulated event, which is important for the instrumental function of NF-kappaB."))
(defun kappa-2 ()
  (p "We previously demonstrated that this tightly controlled event is regulated positively by NF-kappaB-inducing kinase (NIK) and its downstream kinase, IkappaB kinase alpha (IKKalpha)."))
;; (delete-cfr remain-in-job ("remain"))  -- don't include *job-events* or *isr*
(defun kappa-3 ()
  (p "However, the precise mechanisms by which NIK and IKKalpha induce p100 processing remain unclear."))
(defun kappa-4 ()
  (p "Here, we show that, besides activating IKKalpha, NIK also serves as a docking molecule recruiting IKKalpha to p100."))
(defun kappa-5 ()
  (p "This novel function of NIK requires two specific amino acid residues, serine 866 and serine 870, of p100 that are known to be essential for inducible processing of p100."))
(defun kappa-6 ()
  (p "We also show that, after being recruited into p100 complex, activated IKKalpha phosphorylates specific serines located in both N- and C-terminal regions of p100 (serines 99, 108, 115, 123, and 872)."))
(defun kappa-7 ()
  (p "The phosphorylation of these specific serines is the prerequisite for ubiquitination and subsequent processing of p100 mediated by the beta-TrCP ubiquitin ligase and 26 S proteasome, respectively."))
(defun kappa-8 ()
  (p "These results highlight the critical but different roles of NIK and IKKalpha in regulating p100 processing and shed light on the mechanisms mediating the tight control of p100 processing."))
(defun kappa-9 ()
  (p "These data also provide the first evidence for explaining why overexpression of IKKalpha or its activation by many other stimuli such as tumor necrosis factor and mitogens fails to induce p100 processing."))


(defvar *nkf2* "Processing of NF-kappaB2 precursor protein p100 to generate p52 is tightly controlled, which is important for proper function of NF-kappaB. Accordingly, constitutive processing of p100, caused by the loss of its C-terminal processing inhibitory domain due to nfkappab2 gene rearrangements, is associated with the development of various lymphomas and leukemia. In contrast to the physiological processing of p100 triggered by NF-kappaB-inducing kinase (NIK) and its downstream kinase, IkappaB kinase alpha (IKKalpha), which requires the E3 ligase, beta-transducin repeat-containing protein (beta-TrCP), and occurs only in the cytoplasm, the constitutive processing of p100 is independent of beta-TrCP but rather is regulated by the nuclear shuttling of p100. Here, we show that constitutive processing of p100 also requires IKKalpha, but not IKKbeta (IkappaB kinase beta) or IKKgamma (IkappaB kinase gamma). It seems that NIK is also dispensable for this pathogenic processing of p100. These results demonstrate a general role of IKKalpha in p100 processing under both physiological and pathogenic conditions. Additionally, we find that IKKalpha is not required for the nuclear translocation of p100. Thus, these results also indicate that p100 nuclear translocation is not sufficient for the constitutive processing of p100."
  "The entire abstact according to the abstractor, not as in the article")


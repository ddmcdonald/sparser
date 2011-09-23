;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id: space.ltml 17507 2010-01-25 17:23:30Z rgoldman $


;;;---------------------------------------------------------------------
;;;---------------------------------------------------------------------
;;;                 New ontology of space (ddm 9/09)
;;;---------------------------------------------------------------------
;;;---------------------------------------------------------------------


;The notion of space is broken out into a number of disjoint (sibbling) classes.

;; 1. The continuous, fully-connected, discrete (??), metrical mesh of
;; reference space that we're using: the surface of the earth (2.5D from
;; a topological perspective, the 3D space of near space, astronomical
;; space, ...
;;   This is something we don't need to represent unless/until we have
;; two of them and need to anchor our measurement system to one or the other.

;; These next three are "thing like" as opposed to the XX which are 
;; relational
;

; 2. Regions situtated in that space. They have a location with respect
; to the regions that subsume them and they provide reference locations
; for the things in them and the subreqions they subsume. They have
; boundaries, interiors, (implicitly they have exteriors), the have
; interesting topological relationships to other regions. They have an
; area, extent. Their boundaries can be interesting objects in their own
; right. (Consider the difference between the border between Candada and
; the US, which is effectively a line with no width and that between
; North and South Korea, which has a very definite extent.) Regions are
; measured in 2D or 3D units depending on whether we're considering them
; from the perspective of areas or volumes.

(Class Region
    (subClassOf top@Space)
  (restrict contains (mincardinality 0) - Region)
  (restrict isContainedBy (mincardinality 0) - Region)
  (realization (:kind "region")))

#|
The fundamental relationships among regions are topological and merological (part - subpart). In the political domain we have nations > {states, provinces, ...} > counties > {cities, towns}. The top of that mereological scale has a robust notion of containment and boundary and such. As you go down to the lower/smaller part of that scale the likelyhood of, e.g. a city (or better yet a 'metropolitan area') falling across several individuated regions that (collectively) contain it is very large and their borders can be fuzzy. There's a town in Vermont that straddles the US/Canadian border.  |#

(Class Country
     (subClassOf Region top@Named)
     (realization (:kind "country")))
  

;(Class FirstPoliticalDecompositionInCountry
;     (subClassOf top@Relationship)
;; This is a second-order relationship between a country and a class of region. 
;; Sould flesh it out when we want to differentiate this sort of thing.

(Class State
     (subClassOf Region top@Named)
  (restrict country (cardinality 1) - Country)
  (realization (:kind "state")))

;; How do you write USState -- where the country is filled in?

(Class City
     (subClassOf Region top@Named)
   (restrict state (cardinality 1) - State)
  (realization (:kind "city")))

;; Minimal set so individual in mdis.ltml doesn't blow up. Where's a convenient
;; list to adapt? -- this should work...

;; source: state.gov
(Individual Country Afghanistan (top@name "Afghanistan") (top@abbrev "AF") (realization (:name "Afghanistan")))
(Individual Country Albania (top@name "Albania") (top@abbrev "AL") (realization (:name "Albania")))
(Individual Country Algeria (top@name "Algeria") (top@abbrev "AG") (realization (:name "Algeria")))
(Individual Country Andorra (top@name "Andorra") (top@abbrev "AN") (realization (:name "Andorra")))
(Individual Country Angola (top@name "Angola") (top@abbrev "AO") (realization (:name "Angola")))
(Individual Country Antigua-and-Barbuda (top@name "Antigua and Barbuda") (top@abbrev "AC") (realization (:name "Antigua and Barbuda")))
(Individual Country Argentina (top@name "Argentina") (top@abbrev "AR") (realization (:name "Argentina")))
(Individual Country Armenia (top@name "Armenia") (top@abbrev "AM") (realization (:name "Armenia")))
(Individual Country Australia (top@name "Australia") (top@abbrev "AS") (realization (:name "Australia")))
(Individual Country Austria (top@name "Austria") (top@abbrev "AU") (realization (:name "Austria")))
(Individual Country Azerbaijan (top@name "Azerbaijan") (top@abbrev "AJ") (realization (:name "Azerbaijan")))
(Individual Country Bahamas (top@name "The Bahamas") (top@abbrev "BF") (realization (:name "The Bahamas")))
(Individual Country Bahrain (top@name "Bahrain") (top@abbrev "BA") (realization (:name "Bahrain")))
(Individual Country Bangladesh (top@name "Bangladesh") (top@abbrev "BG") (realization (:name "Bangladesh")))
(Individual Country Barbados (top@name "Barbados") (top@abbrev "BB") (realization (:name "Barbados")))
(Individual Country Belarus (top@name "Belarus") (top@abbrev "BO") (realization (:name "Belarus")))
(Individual Country Belgium (top@name "Belgium") (top@abbrev "BE") (realization (:name "Belgium")))
(Individual Country Belize (top@name "Belize") (top@abbrev "BH") (realization (:name "Belize")))
(Individual Country Benin (top@name "Benin") (top@abbrev "BN") (realization (:name "Benin")))
(Individual Country Bhutan (top@name "Bhutan") (top@abbrev "BT") (realization (:name "Bhutan")))
(Individual Country Bolivia (top@name "Bolivia") (top@abbrev "BL") (realization (:name "Bolivia")))
(Individual Country Bosnia-and-Herzegovina (top@name "Bosnia and Herzegovina") (top@abbrev "BK") (realization (:name "Bosnia and Herzegovina")))
(Individual Country Botswana (top@name "Botswana") (top@abbrev "BC") (realization (:name "Botswana")))
(Individual Country Brazil (top@name "Brazil") (top@abbrev "BR") (realization (:name "Brazil")))
(Individual Country Brunei (top@name "Brunei") (top@abbrev "BX") (realization (:name "Brunei")))
(Individual Country Bulgaria (top@name "Bulgaria") (top@abbrev "BU") (realization (:name "Bulgaria")))
(Individual Country Burkina-Faso (top@name "Burkina Faso") (top@abbrev "UV") (realization (:name "Burkina Faso")))
(Individual Country Burma (top@name "Burma") (top@abbrev "BM") (realization (:name "Burma")))
(Individual Country Burundi (top@name "Burundi") (top@abbrev "BY") (realization (:name "Burundi")))
(Individual Country Cambodia (top@name "Cambodia") (top@abbrev "CB") (realization (:name "Cambodia")))
(Individual Country Cameroon (top@name "Cameroon") (top@abbrev "CM") (realization (:name "Cameroon")))
(Individual Country Canada (top@name "Canada") (top@abbrev "CA") (realization (:name "Canada")))
(Individual Country Cape-Verde (top@name "Cape Verde") (top@abbrev "CV") (realization (:name "Cape Verde")))
(Individual Country Central-African-Republic (top@name "Central African Republic") (top@abbrev "CT") (realization (:name "Central African Republic")))
(Individual Country Chad (top@name "Chad") (top@abbrev "CD") (realization (:name "Chad")))
(Individual Country Chile (top@name "Chile") (top@abbrev "CI") (realization (:name "Chile")))
(Individual Country China (top@name "China") (top@abbrev "CH") (realization (:name "China")))
(Individual Country Colombia (top@name "Colombia") (top@abbrev "CO") (realization (:name "Colombia")))
(Individual Country Comoros (top@name "Comoros") (top@abbrev "CN") (realization (:name "Comoros")))
(Individual Country Costa-Rica (top@name "Costa Rica") (top@abbrev "CS") (realization (:name "Costa Rica")))
;; name & realization of next one should should be C�te d'Ivoire but having problems with the circumflex diacritic mark and apostrophe
(Individual Country Cote-d-Ivoire (top@name "Ivory Coast") (top@abbrev "IV") (realization (:name "Ivory Coast")))
(Individual Country Croatia (top@name "Croatia") (top@abbrev "HR") (realization (:name "Croatia")))
(Individual Country Cuba (top@name "Cuba") (top@abbrev "CU") (realization (:name "Cuba")))
(Individual Country Cyprus (top@name "Cyprus") (top@abbrev "CY") (realization (:name "Cyprus")))
(Individual Country Czech-Republic (top@name "Czech Republic") (top@abbrev "EZ") (realization (:name "Czech Republic")))
(Individual Country Democratic-Republic-of-the-Congo (top@name "Democratic Republic of the Congo") (top@abbrev "CG") (realization (:name "Democratic Republic of the Congo")))
(Individual Country Denmark (top@name "Denmark") (top@abbrev "DA") (realization (:name "Denmark")))
(Individual Country Djibouti (top@name "Djibouti") (top@abbrev "DJ") (realization (:name "Djibouti")))
(Individual Country Dominica (top@name "Dominica") (top@abbrev "DO") (realization (:name "Dominica")))
(Individual Country Dominican-Republic (top@name "Dominican Republic") (top@abbrev "DR") (realization (:name "Dominican Republic")))
(Individual Country Ecuador (top@name "Ecuador") (top@abbrev "EC") (realization (:name "Ecuador")))
(Individual Country Egypt (top@name "Egypt") (top@abbrev "EG") (realization (:name "Egypt")))
(Individual Country El-Salvador (top@name "El Salvador") (top@abbrev "ES") (realization (:name "El Salvador")))
(Individual Country Equatorial-Guinea (top@name "Equatorial Guinea") (top@abbrev "EK") (realization (:name "Equatorial Guinea")))
(Individual Country Eritrea (top@name "Eritrea") (top@abbrev "ER") (realization (:name "Eritrea")))
(Individual Country Estonia (top@name "Estonia") (top@abbrev "EN") (realization (:name "Estonia")))
(Individual Country Ethiopia (top@name "Ethiopia") (top@abbrev "ET") (realization (:name "Ethiopia")))
(Individual Country Federated-States-of-Micronesia-C (top@name "Federated States of Micronesia") (top@abbrev "FM") (realization (:name "Federated States of Micronesia")))
(Individual Country Fiji (top@name "Fiji") (top@abbrev "FJ") (realization (:name "Fiji")))
(Individual Country Finland (top@name "Finland") (top@abbrev "FI") (realization (:name "Finland")))
(Individual Country France (top@name "France") (top@abbrev "FR") (realization (:name "France")))
(Individual Country Gabon (top@name "Gabon") (top@abbrev "GB") (realization (:name "Gabon")))
(Individual Country Gambia (top@name "The Gambia") (top@abbrev "GA") (realization (:name "The Gambia")))
(Individual Country Georgia-C (top@name "Georgia") (top@abbrev "GG") (realization (:name "Georgia")))
(Individual Country Germany (top@name "Germany") (top@abbrev "GM") (realization (:name "Germany")))
(Individual Country Ghana (top@name "Ghana") (top@abbrev "GH") (realization (:name "Ghana")))
(Individual Country Greece (top@name "Greece") (top@abbrev "GR") (realization (:name "Greece")))
(Individual Country Grenada (top@name "Grenada") (top@abbrev "GJ") (realization (:name "Grenada")))
(Individual Country Guatemala (top@name "Guatemala") (top@abbrev "GT") (realization (:name "Guatemala")))
(Individual Country Guinea (top@name "Guinea") (top@abbrev "GV") (realization (:name "Guinea")))
(Individual Country Guinea-Bissau (top@name "Guinea-Bissau") (top@abbrev "PU") (realization (:name "Guinea-Bissau")))
(Individual Country Guyana (top@name "Guyana") (top@abbrev "GY") (realization (:name "Guyana")))
(Individual Country Haiti (top@name "Haiti") (top@abbrev "HA") (realization (:name "Haiti")))
(Individual Country Holy-See (top@name "Holy See") (top@abbrev "VT") (realization (:name "Holy See")))
(Individual Country Honduras (top@name "Honduras") (top@abbrev "HO") (realization (:name "Honduras")))
(Individual Country Hungary (top@name "Hungary") (top@abbrev "HU") (realization (:name "Hungary")))
(Individual Country Iceland (top@name "Iceland") (top@abbrev "IC") (realization (:name "Iceland")))
(Individual Country India (top@name "India") (top@abbrev "IN") (realization (:name "India")))
(Individual Country Indonesia (top@name "Indonesia") (top@abbrev "ID") (realization (:name "Indonesia")))
(Individual Country Iran (top@name "Iran") (top@abbrev "IR") (realization (:name "Iran")))
(Individual Country Iraq (top@name "Iraq") (top@abbrev "IZ") (realization (:name "Iraq")))
(Individual Country Ireland (top@name "Ireland") (top@abbrev "EI") (realization (:name "Ireland")))
(Individual Country Israel (top@name "Israel") (top@abbrev "IS") (realization (:name "Israel")))
(Individual Country Italy (top@name "Italy") (top@abbrev "IT") (realization (:name "Italy")))
(Individual Country Jamaica (top@name "Jamaica") (top@abbrev "JM") (realization (:name "Jamaica")))
(Individual Country Japan (top@name "Japan") (top@abbrev "JA") (realization (:name "Japan")))
(Individual Country Jordan (top@name "Jordan") (top@abbrev "JO") (realization (:name "Jordan")))
(Individual Country Kazakhstan (top@name "Kazakhstan") (top@abbrev "KZ") (realization (:name "Kazakhstan")))
(Individual Country Kenya (top@name "Kenya") (top@abbrev "KE") (realization (:name "Kenya")))
(Individual Country Kiribati (top@name "Kiribati") (top@abbrev "KR") (realization (:name "Kiribati")))
(Individual Country Kosovo (top@name "Kosovo") (top@abbrev "KV") (realization (:name "Kosovo")))
(Individual Country Kuwait (top@name "Kuwait") (top@abbrev "KU") (realization (:name "Kuwait")))
(Individual Country Kyrgyzstan (top@name "Kyrgyzstan") (top@abbrev "KG") (realization (:name "Kyrgyzstan")))
(Individual Country Laos (top@name "Laos") (top@abbrev "LA") (realization (:name "Laos")))
(Individual Country Latvia (top@name "Latvia") (top@abbrev "LG") (realization (:name "Latvia")))
(Individual Country Lebanon (top@name "Lebanon") (top@abbrev "LE") (realization (:name "Lebanon")))
(Individual Country Lesotho (top@name "Lesotho") (top@abbrev "LT") (realization (:name "Lesotho")))
(Individual Country Liberia (top@name "Liberia") (top@abbrev "LI") (realization (:name "Liberia")))
(Individual Country Libya (top@name "Libya") (top@abbrev "LY") (realization (:name "Libya")))
(Individual Country Liechtenstein (top@name "Liechtenstein") (top@abbrev "LS") (realization (:name "Liechtenstein")))
(Individual Country Lithuania (top@name "Lithuania") (top@abbrev "LH") (realization (:name "Lithuania")))
(Individual Country Luxembourg (top@name "Luxembourg") (top@abbrev "LU") (realization (:name "Luxembourg")))
(Individual Country Macedonia (top@name "Macedonia") (top@abbrev "MK") (realization (:name "Macedonia")))
(Individual Country Madagascar (top@name "Madagascar") (top@abbrev "MA") (realization (:name "Madagascar")))
(Individual Country Malawi (top@name "Malawi") (top@abbrev "MI") (realization (:name "Malawi")))
(Individual Country Malaysia (top@name "Malaysia") (top@abbrev "MY") (realization (:name "Malaysia")))
(Individual Country Maldives (top@name "Maldives") (top@abbrev "MV") (realization (:name "Maldives")))
(Individual Country Mali (top@name "Mali") (top@abbrev "ML") (realization (:name "Mali")))
(Individual Country Malta (top@name "Malta") (top@abbrev "MT") (realization (:name "Malta")))
(Individual Country Marshall-Islands-C (top@name "Marshall Islands") (top@abbrev "RM") (realization (:name "Marshall Islands")))
(Individual Country Mauritania (top@name "Mauritania") (top@abbrev "MR") (realization (:name "Mauritania")))
(Individual Country Mauritius (top@name "Mauritius") (top@abbrev "MP") (realization (:name "Mauritius")))
(Individual Country Mexico (top@name "Mexico") (top@abbrev "MX") (realization (:name "Mexico")))
(Individual Country Moldova (top@name "Moldova") (top@abbrev "MD") (realization (:name "Moldova")))
(Individual Country Monaco (top@name "Monaco") (top@abbrev "MN") (realization (:name "Monaco")))
(Individual Country Mongolia (top@name "Mongolia") (top@abbrev "MG") (realization (:name "Mongolia")))
(Individual Country Montenegro (top@name "Montenegro") (top@abbrev "MJ") (realization (:name "Montenegro")))
(Individual Country Morocco (top@name "Morocco") (top@abbrev "MO") (realization (:name "Morocco")))
(Individual Country Mozambique (top@name "Mozambique") (top@abbrev "MZ") (realization (:name "Mozambique")))
(Individual Country Namibia (top@name "Namibia") (top@abbrev "WA") (realization (:name "Namibia")))
(Individual Country Nauru (top@name "Nauru") (top@abbrev "NR") (realization (:name "Nauru")))
(Individual Country Nepal (top@name "Nepal") (top@abbrev "NP") (realization (:name "Nepal")))
(Individual Country Netherlands (top@name "Netherlands") (top@abbrev "NL") (realization (:name "Netherlands")))
(Individual Country New-Zealand (top@name "New Zealand") (top@abbrev "NZ") (realization (:name "New Zealand")))
(Individual Country Nicaragua (top@name "Nicaragua") (top@abbrev "NU") (realization (:name "Nicaragua")))
(Individual Country Niger (top@name "Niger") (top@abbrev "NG") (realization (:name "Niger")))
(Individual Country Nigeria (top@name "Nigeria") (top@abbrev "NI") (realization (:name "Nigeria")))
(Individual Country North-Korea (top@name "North Korea") (top@abbrev "KN") (realization (:name "North Korea")))
(Individual Country Norway (top@name "Norway") (top@abbrev "NO") (realization (:name "Norway")))
(Individual Country Oman (top@name "Oman") (top@abbrev "MU") (realization (:name "Oman")))
(Individual Country Pakistan (top@name "Pakistan") (top@abbrev "PK") (realization (:name "Pakistan")))
(Individual Country Palau-C (top@name "Palau") (top@abbrev "PS") (realization (:name "Palau")))
(Individual Country Panama (top@name "Panama") (top@abbrev "PM") (realization (:name "Panama")))
(Individual Country Papua-New-Guinea (top@name "Papua New Guinea") (top@abbrev "PP") (realization (:name "Papua New Guinea")))
(Individual Country Paraguay (top@name "Paraguay") (top@abbrev "PA") (realization (:name "Paraguay")))
(Individual Country Peru (top@name "Peru") (top@abbrev "PE") (realization (:name "Peru")))
(Individual Country Philippines (top@name "Philippines") (top@abbrev "RP") (realization (:name "Philippines")))
(Individual Country Poland (top@name "Poland") (top@abbrev "PL") (realization (:name "Poland")))
(Individual Country Portugal (top@name "Portugal") (top@abbrev "PO") (realization (:name "Portugal")))
(Individual Country Qatar (top@name "Qatar") (top@abbrev "QA") (realization (:name "Qatar")))
(Individual Country Republic-of-the-Congo (top@name "Republic of the Congo") (top@abbrev "CF") (realization (:name "Republic of the Congo")))
(Individual Country Romania (top@name "Romania") (top@abbrev "RO") (realization (:name "Romania")))
(Individual Country Russia (top@name "Russia") (top@abbrev "RS") (realization (:name "Russia")))
(Individual Country Rwanda (top@name "Rwanda") (top@abbrev "RW") (realization (:name "Rwanda")))
(Individual Country Saint-Kitts-and-Nevis (top@name "Saint Kitts and Nevis") (top@abbrev "SC") (realization (:name "Saint Kitts and Nevis")))
(Individual Country Saint-Lucia (top@name "Saint Lucia") (top@abbrev "ST") (realization (:name "Saint Lucia")))
(Individual Country Saint-Vincent-and-the-Grenadines (top@name "Saint Vincent and the Grenadines") (top@abbrev "VC") (realization (:name "Saint Vincent and the Grenadines")))
(Individual Country Samoa (top@name "Samoa") (top@abbrev "WS") (realization (:name "Samoa")))
(Individual Country San-Marino (top@name "San Marino") (top@abbrev "SM") (realization (:name "San Marino")))
(Individual Country Sao-Tome-and-Principe (top@name "Sao Tome and Principe") (top@abbrev "TP") (realization (:name "Sao Tome and Principe")))
(Individual Country Saudi-Arabia (top@name "Saudi Arabia") (top@abbrev "SA") (realization (:name "Saudi Arabia")))
(Individual Country Senegal (top@name "Senegal") (top@abbrev "SG") (realization (:name "Senegal")))
(Individual Country Serbia (top@name "Serbia") (top@abbrev "RI") (realization (:name "Serbia")))
(Individual Country Seychelles (top@name "Seychelles") (top@abbrev "SE") (realization (:name "Seychelles")))
(Individual Country Sierra-Leone (top@name "Sierra Leone") (top@abbrev "SL") (realization (:name "Sierra Leone")))
(Individual Country Singapore (top@name "Singapore") (top@abbrev "SN") (realization (:name "Singapore")))
(Individual Country Slovakia (top@name "Slovakia") (top@abbrev "LO") (realization (:name "Slovakia")))
(Individual Country Slovenia (top@name "Slovenia") (top@abbrev "SI") (realization (:name "Slovenia")))
(Individual Country Solomon-Islands (top@name "Solomon Islands") (top@abbrev "BP") (realization (:name "Solomon Islands")))
(Individual Country Somalia (top@name "Somalia") (top@abbrev "SO") (realization (:name "Somalia")))
(Individual Country South-Africa (top@name "South Africa") (top@abbrev "SF") (realization (:name "South Africa")))
(Individual Country South-Korea (top@name "South Korea") (top@abbrev "KS") (realization (:name "South Korea")))
(Individual Country Spain (top@name "Spain") (top@abbrev "SP") (realization (:name "Spain")))
(Individual Country Sri-Lanka (top@name "Sri Lanka") (top@abbrev "CE") (realization (:name "Sri Lanka")))
(Individual Country Sudan (top@name "Sudan") (top@abbrev "SU") (realization (:name "Sudan")))
(Individual Country Suriname (top@name "Suriname") (top@abbrev "NS") (realization (:name "Suriname")))
(Individual Country Swaziland (top@name "Swaziland") (top@abbrev "WZ") (realization (:name "Swaziland")))
(Individual Country Sweden (top@name "Sweden") (top@abbrev "SW") (realization (:name "Sweden")))
(Individual Country Switzerland (top@name "Switzerland") (top@abbrev "SZ") (realization (:name "Switzerland")))
(Individual Country Syria (top@name "Syria") (top@abbrev "SY") (realization (:name "Syria")))
(Individual Country Taiwan (top@name "Taiwan") (top@abbrev "TW") (realization (:name "Taiwan")))
(Individual Country Tajikistan (top@name "Tajikistan") (top@abbrev "TI") (realization (:name "Tajikistan")))
(Individual Country Tanzania (top@name "Tanzania") (top@abbrev "TZ") (realization (:name "Tanzania")))
(Individual Country Thailand (top@name "Thailand") (top@abbrev "TH") (realization (:name "Thailand")))
(Individual Country Timor-Leste (top@name "Timor-Leste") (top@abbrev "TT") (realization (:name "Timor-Leste")))
(Individual Country Togo (top@name "Togo") (top@abbrev "TO") (realization (:name "Togo")))
(Individual Country Tonga (top@name "Tonga") (top@abbrev "TN") (realization (:name "Tonga")))
(Individual Country Trinidad-and-Tobago (top@name "Trinidad and Tobago") (top@abbrev "TD") (realization (:name "Trinidad and Tobago")))
(Individual Country Tunisia (top@name "Tunisia") (top@abbrev "TS") (realization (:name "Tunisia")))
(Individual Country Turkey (top@name "Turkey") (top@abbrev "TU") (realization (:name "Turkey")))
(Individual Country Turkmenistan (top@name "Turkmenistan") (top@abbrev "TX") (realization (:name "Turkmenistan")))
(Individual Country Tuvalu (top@name "Tuvalu") (top@abbrev "TV") (realization (:name "Tuvalu")))
(Individual Country Uganda (top@name "Uganda") (top@abbrev "UG") (realization (:name "Uganda")))
(Individual Country Ukraine (top@name "Ukraine") (top@abbrev "UP") (realization (:name "Ukraine")))
(Individual Country United-Arab-Emirates (top@name "United Arab Emirates") (top@abbrev "AE") (realization (:name "United Arab Emirates")))
(Individual Country United-Kingdom (top@name "United Kingdom") (top@abbrev "UK") (realization (:name "United Kingdom")))
(Individual Country United-States (top@name "United States") (top@abbrev "US") (realization (:name "United States")))
(Individual Country Uruguay (top@name "Uruguay") (top@abbrev "UY") (realization (:name "Uruguay")))
(Individual Country Uzbekistan (top@name "Uzbekistan") (top@abbrev "UZ") (realization (:name "Uzbekistan")))
(Individual Country Vanuatu (top@name "Vanuatu") (top@abbrev "NH") (realization (:name "Vanuatu")))
(Individual Country Venezuela (top@name "Venezuela") (top@abbrev "VE") (realization (:name "Venezuela")))
(Individual Country Vietnam (top@name "Vietnam") (top@abbrev "VM") (realization (:name "Vietnam")))
(Individual Country Yemen (top@name "Yemen") (top@abbrev "YM") (realization (:name "Yemen")))
(Individual Country Zambia (top@name "Zambia") (top@abbrev "ZA") (realization (:name "Zambia")))
(Individual Country Zimbabwe (top@name "Zimbabwe") (top@abbrev "ZI") (realization (:name "Zimbabwe")))

;; source: usps.gov
(Individual State Alabama (top@name "Alabama") (top@abbrev "AL") (country United-States) (realization (:name "Alabama")))
(Individual State Alaska (top@name "Alaska") (top@abbrev "AK") (country United-States) (realization (:name "Alaska")))
(Individual State Arizona (top@name "Arizona") (top@abbrev "AZ") (country United-States) (realization (:name "Arizona")))
(Individual State Arkansas (top@name "Arkansas") (top@abbrev "AR") (country United-States) (realization (:name "Arkansas")))
(Individual State California (top@name "California") (top@abbrev "CA") (country United-States) (realization (:name "California")))
(Individual State Colorado (top@name "Colorado") (top@abbrev "CO") (country United-States) (realization (:name "Colorado")))
(Individual State Connecticut (top@name "Connecticut") (top@abbrev "CT") (country United-States) (realization (:name "Connecticut")))
(Individual State Delaware (top@name "Delaware") (top@abbrev "DE") (country United-States) (realization (:name "Delaware")))
(Individual State Florida (top@name "Florida") (top@abbrev "FL") (country United-States) (realization (:name "Florida")))
(Individual State Georgia (top@name "Georgia") (top@abbrev "GA") (country United-States) (realization (:name "Georgia")))
(Individual State Hawaii (top@name "Hawaii") (top@abbrev "HI") (country United-States) (realization (:name "Hawaii")))
(Individual State Idaho (top@name "Idaho") (top@abbrev "ID") (country United-States) (realization (:name "Idaho")))
(Individual State Illinois (top@name "Illinois") (top@abbrev "IL") (country United-States) (realization (:name "Illinois")))
(Individual State Indiana (top@name "Indiana") (top@abbrev "IN") (country United-States) (realization (:name "Indiana")))
(Individual State Iowa (top@name "Iowa") (top@abbrev "IA") (country United-States) (realization (:name "Iowa")))
(Individual State Kansas (top@name "Kansas") (top@abbrev "KS") (country United-States) (realization (:name "Kansas")))
(Individual State Kentucky (top@name "Kentucky") (top@abbrev "KY") (country United-States) (realization (:name "Kentucky")))
(Individual State Louisiana (top@name "Louisiana") (top@abbrev "LA") (country United-States) (realization (:name "Louisiana")))
(Individual State Maine (top@name "Maine") (top@abbrev "ME") (country United-States) (realization (:name "Maine")))
(Individual State Maryland (top@name "Maryland") (top@abbrev "MD") (country United-States) (realization (:name "Maryland")))
(Individual State Massachusetts (top@name "Massachusetts") (top@abbrev "MA") (country United-States) (realization (:name "Massachusetts")))
(Individual State Michigan (top@name "Michigan") (top@abbrev "MI") (country United-States) (realization (:name "Michigan")))
(Individual State Minnesota (top@name "Minnesota") (top@abbrev "MN") (country United-States) (realization (:name "Minnesota")))
(Individual State Mississippi (top@name "Mississippi") (top@abbrev "MS") (country United-States) (realization (:name "Mississippi")))
(Individual State Missouri (top@name "Missouri") (top@abbrev "MO") (country United-States) (realization (:name "Missouri")))
(Individual State Montana (top@name "Montana") (top@abbrev "MT") (country United-States) (realization (:name "Montana")))
(Individual State Nebraska (top@name "Nebraska") (top@abbrev "NE") (country United-States) (realization (:name "Nebraska")))
(Individual State Nevada (top@name "Nevada") (top@abbrev "NV") (country United-States) (realization (:name "Nevada")))
(Individual State New-Hampshire (top@name "New Hampshire") (top@abbrev "NH") (country United-States) (realization (:name "New Hampshire")))
(Individual State New-Jersey (top@name "New Jersey") (top@abbrev "NJ") (country United-States) (realization (:name "New Jersey")))
(Individual State New-Mexico (top@name "New Mexico") (top@abbrev "NM") (country United-States) (realization (:name "New Mexico")))
(Individual State New-York (top@name "New York") (top@abbrev "NY") (country United-States) (realization (:name "New York")))
(Individual State North-Carolina (top@name "North Carolina") (top@abbrev "NC") (country United-States) (realization (:name "North Carolina")))
(Individual State North-Dakota (top@name "North Dakota") (top@abbrev "ND") (country United-States) (realization (:name "North Dakota")))
(Individual State Ohio (top@name "Ohio") (top@abbrev "OH") (country United-States) (realization (:name "Ohio")))
(Individual State Oklahoma (top@name "Oklahoma") (top@abbrev "OK") (country United-States) (realization (:name "Oklahoma")))
(Individual State Oregon (top@name "Oregon") (top@abbrev "OR") (country United-States) (realization (:name "Oregon")))
(Individual State Pennsylvania (top@name "Pennsylvania") (top@abbrev "PA") (country United-States) (realization (:name "Pennsylvania")))
(Individual State Rhode-Island (top@name "Rhode Island") (top@abbrev "RI") (country United-States) (realization (:name "Rhode Island")))
(Individual State South-Carolina (top@name "South Carolina") (top@abbrev "SC") (country United-States) (realization (:name "South Carolina")))
(Individual State South-Dakota (top@name "South Dakota") (top@abbrev "SD") (country United-States) (realization (:name "South Dakota")))
(Individual State Tennessee (top@name "Tennessee") (top@abbrev "TN") (country United-States) (realization (:name "Tennessee")))
(Individual State Texas (top@name "Texas") (top@abbrev "TX") (country United-States) (realization (:name "Texas")))
(Individual State Utah (top@name "Utah") (top@abbrev "UT") (country United-States) (realization (:name "Utah")))
(Individual State Vermont (top@name "Vermont") (top@abbrev "VT") (country United-States) (realization (:name "Vermont")))
(Individual State Virginia (top@name "Virginia") (top@abbrev "VA") (country United-States) (realization (:name "Virginia")))
(Individual State Washington (top@name "Washington") (top@abbrev "WA") (country United-States) (realization (:name "Washington")))
(Individual State West-Virginia (top@name "West Virginia") (top@abbrev "WV") (country United-States) (realization (:name "West Virginia")))
(Individual State Wisconsin (top@name "Wisconsin") (top@abbrev "WI") (country United-States) (realization (:name "Wisconsin")))
(Individual State Wyoming (top@name "Wyoming") (top@abbrev "WY") (country United-States) (realization (:name "Wyoming")))

;; the following aren't really "states" per se, but rather territories, military mail "states," and soverign states in free association with the US
;; this list came from the post office, so I'll include these for now
(Individual State American-Samoa (top@name "American Samoa") (top@abbrev "AS") (country United-States) (realization (:name "American Samoa")))
(Individual State District-of-Columbia (top@name "District of Columbia") (top@abbrev "DC") (country United-States) (realization (:name "District of Columbia")))
(Individual State Federated-States-of-Micronesia (top@name "Federated States of Micronesia") (top@abbrev "FM") (country United-States) (realization (:name "Federated States of Micronesia")))
(Individual State Guam (top@name "Guam") (top@abbrev "GU") (country United-States) (realization (:name "Guam")))
(Individual State Marshall-Islands (top@name "Marshall Islands") (top@abbrev "MH") (country United-States) (realization (:name "Marshall Islands")))
(Individual State Northern-Mariana-Islands (top@name "Northern Mariana Islands") (top@abbrev "MP") (country United-States) (realization (:name "Northern Mariana Islands")))
(Individual State Palau (top@name "Palau") (top@abbrev "PW") (country United-States) (realization (:name "Palau")))
(Individual State Puerto-Rico (top@name "Puerto Rico") (top@abbrev "PR") (country United-States) (realization (:name "Puerto Rico")))
(Individual State Virgin-Islands (top@name "Virgin Islands") (top@abbrev "VI") (country United-States) (realization (:name "Virgin Islands")))
(Individual State Armed-Forces-Africa (top@name "Armed Forces Africa") (top@abbrev "AE") (country United-States) (realization (:name "Armed Forces Africa")))
(Individual State Armed-Forces-Americas (top@name "Armed Forces Americas") (top@abbrev "AA") (country United-States) (realization (:name "Armed Forces Americas")))
(Individual State Armed-Forces-Canada (top@name "Armed Forces Canada") (top@abbrev "AE") (country United-States) (realization (:name "Armed Forces Canada")))
(Individual State Armed-Forces-Europe (top@name "Armed Forces Europe") (top@abbrev "AE") (country United-States) (realization (:name "Armed Forces Europe")))
(Individual State Armed-Forces-Middle-East (top@name "Armed Forces Middle East") (top@abbrev "AE") (country United-States) (realization (:name "Armed Forces Middle East")))
(Individual State Armed-Forces-Pacific (top@name "Armed Forces Pacific") (top@abbrev "AP") (country United-States) (realization (:name "Armed Forces Pacific")))

;; still need a good list of cities I suppose...
(Individual City Decatur (top@name "Decatur") (state Alabama) (realization (:name "Decatur")))


; 3. Points -- which are atomic locations at some granularity (and are regions
; at a higher granularity). Points are always in one (or more) regions. They
; have coordinates -- some means of finding them within a reference region.
;
; A point is probably the right grounding for the notion of 'location', but
; we have to always appreciate the granularity we're using. 

; 4. Paths -- roads, footpaths, region boundaries, etc. Paths are usually 
; situated in more than one individuated region (Consider Mass. Avenue).

; 5. Distance -- a relational kind of space stuff since we have to talk about
; the distance 'between' two points, or 'along' a path. Distance is measured
; in linear units. A distance can be as the crow (helicopter) flies or be
; constrained to be along a path.

; 6. Boundaries and other dependent entities such as holes or cracks

; 7. Granularity

; 8. Spatial units of measure, and spatial measurements

; 9. Spatial relations

; The most important spatial relation for MDIS purposes is probably containment,
; ;which applies between regions. This lets us define Political/Governance regions:

; The political regions (and all the regions/location(points) that we care about
; have names, and there is a notion of the 'next-{larger/smaller}-political unit.
; So the next political unit down for Canada is a 'province', while for the US
; it's a 'state'. Going down the containment chain there will be more political 
; units whose relevance is dependent of the situation. In Massachusetts we have
; 'counties' but they are largely irrelevant and what one does care about is 
; 'towns'/'cities'. 

; A MOB station will be at some location, say Fort Devins (since I can remember
; that one), which is a 'military base', which is the same kind of thing as
; a 'city', i.e. they would have a common parent from which we could have default
; assumptions that extend 'region' such as their having a specific 'population'.












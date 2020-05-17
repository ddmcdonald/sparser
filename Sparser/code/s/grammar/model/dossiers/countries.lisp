;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 199-1995,2011-2020  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "countries"
;;;   Module:  "model;dossiers:"
;;;  version:  March 2020

;; 0.1 (10/12/92 v2.1) introducing new semantics
;;     (9/7 v2.3) revived the existing set of cases
;;     (10/29) added Hong Kong  (9/26/94) added Holland  (5/3/95) "United Kingdom"
;;     (7/16/07) "France". (5/22/10) "Hati". (12/19/11) "Mexico".
;; 0.1 (11/24/12) pulled in  Charlie G's dump for IL MDIS 
;;     work circa January 2010 from state.gov
;;     (3/4/13) Added Kurdistan and its adjective, /// but it's not really a country
;; 0.2 (9/25/13) Added a bunch of cities. 
;;     (5/19/14) Removed "The" from Bahamas. Because of how polywords are done
;;      that's creating a version of "The" without a form field.

(in-package :sparser)

(define-country "Afghanistan" :adjective "Afghan"
    :cities '("Kabul"))
(define-country "Albania")
(define-country "Algeria")
(define-country "Andorra")
(define-country "Angola")
(define-country "Antigua and Barbuda")
(define-country "Argentina" :adjective "Argentine"
                :cities '("Buenos Aires"))
(define-country "Armenia")
(define-country "Australia" :adjective "Australian"
                :provinces '("Queensland" "Tasmania" "New South Wales")
                :cities '("Sydney" "Melbourne"))
(define-country "Austria" :adjective "Austrian"
    :cities '("Vienna"))
(define-country "Azerbaijan")
(define-country "Bahamas")
(define-country "Bahrain")
(define-country "Bangladesh" :adjective "Bangladeshi")
(define-country "Barbados")
(define-country "Balearic Islands") ;; linked to Spain
(define-country "Belarus")
(define-country "Belgium")
(define-country "Belize")
(define-country "Benin")
(define-country "Bhutan")
(define-country "Bolivia")
(define-country "Bosnia and Herzegovina")
(define-country "Botswana")
(define-country "Brazil")
(define-country "Great Britain"
    :aliases '("United Kingdom" "UK" "Britain") ;; u.k. and great britain aren't actuallythe same
    :adjective "British"
    :cities '("London" "Birmingham" "Brighton" "Cardiff"
       "Edinburgh" "Glasgow" "Oxford" "Cambridge" "Leeds"))
 (define-country "England" :adjective "English")
 (define-country "Scotland" :adjective "Scottish")
 (define-country "Wales" :adjective "Welsh")
;;  Northern Ireland
(define-country "Brunei")
(define-country "Bulgaria")
(define-country "Burkina Faso")
(define-country "Burma" :adjective "Burmese" :aliases '("Myanmar")
  :cities '("Rangoon"))
(define-country "Burundi")
(define-country "Cambodia")
(define-country "Cameroon")
(define-country "Canada" :adjective "Canadian"
                :provinces '("Alberta" "British Columbia" "Manitoba" "New Brunswick" "Newfoundland" "Newfoundland and Labrador"
                             "Nova Scotia" "Ontario" "Prince Edward Island" "Quebec" "Québec" "Saskatchewan"
                             "Northwest Territories" "Nunavut" "Yukon") ;; technically territories
                :cities '("Ottawa" "Quebec City" "Québec City" "Vancouver" "Winnepeg"))
(define-country "Canary Islands") ;; linked to Spain
(define-country "Cape Verde")
(define-country "Central African Republic")
(define-country "Chad")
(define-country "Chile")
(define-country "China"
    :adjective "Chinese"
    :aliases '("PRC" "People's Republic of China")
    :provinces '("Hubei" "Shandong" "Shandon" "Hunan")
    :cities '("Beijing" "Shanghai" "Guangzhou" "Wuhan" "Macau" "Shenzhen" "Sichuan" "Chengdu"))
(define-country "Colombia")
(define-country "Comoros")
(define-country "Costa Rica")
;define-country should be C�te d'Ivoire but having problems with the circumflex diacritic mark and apostrophe
(define-country "Ivory Coast")
(define-country "Croatia")
(define-country "Cuba" :cities '("Havana"))
(define-country "Cyprus" :adjective "Cypriot")
(define-country "Czech Republic")
(define-country "Democratic Republic of the Congo"
    :aliases '("Congo" "Zaire" "Republic of the Congo");; former name but probably worth having
    :adjective '("Congolese" "Zairean"))
;(define-country "Republic of the Congo")
(define-country "Denmark" :adjective "Danish"
    :cities '("Copenhagen"))
(define-country "Djibouti")
(define-country "Dominica")
(define-country "Dominican Republic")
(define-country "East Timor")
(define-country "Ecuador")
(define-country "Egypt")
(define-country "El Salvador") 
(define-country "Equatorial Guinea")
(define-country "Eritrea" :adjective "Eritrean")
(define-country "Estonia")
(define-country "Ethiopia")
(define-country "European Union" :aliases '("EU"))
(define-country "Federated States of Micronesia")
(define-country "Fiji")
(define-country "Finland" :adjective "finnish"
                :cities '("Helsinki"))
(define-country "France"  :adjective "french")
(define-country "Gabon")
(define-country "Gambia")
(define-country "Georgia")
(define-country "Germany" :adjective "German"
                :cities '("Berlin" "Frankfurt" "Leipzig" "Munich"))
(define-country "Ghana")
(define-country "Greece")
(define-country "Grenada")
(define-country "Guatemala")
(define-country "Guinea")
(define-country "Guinea-Bissau")
(define-country "Guyana")
(define-country "Haiti" :adjective "Haitian" :aliases '("Haïti"))
(define-country "Holy See")
(define-country "Honduras")
(define-country "Hong Kong")
(define-country "Hungary")
(define-country "Iceland" :adjective '("Icelander" "Icelandic")) ;; problem with demonym vs adjective
(define-country "India" :adjective "Indian" :aliases '("india")
  :cities '("New Delhi" "Mumbai"))
(define-country "Indonesia"
    :cities '("Jakarta")
    :provinces '("Java" "Sumatra")) ;; how do we want to add sumatra and sumatran? also Java
(define-country "Iran"
    :adjective "Iranian"
    :cities '("Qom" "Tehran"))
(define-country "Iraq" :adjective "Iraqi")
(define-country "Ireland" :adjective "Irish")
(define-country "Israel"
    :adjective '("Israeli" "Jewish") ;; jewish is problematic -- we need a religions section 
    :language "Hebrew"
    :cities '("Jerusalem"))
(define-country "Italy" :aliases '("Italia"))
(define-country "Jamaica" :adjective "Jamaican")
(define-country "Japan" :adjective '("Japanese" "japanese") ;have seen lowercase
  :cities '("Tokyo"))
(define-country "Jordan")
(define-country "Kazakhstan" :adjective "Kazakh")
(define-country "Kenya" :adjective "Kenyan"
  :cities '("Nairobi"))
(define-country "Kiribati")
(define-country "Kosovo")
(define-country "Kuwait")
(define-country "Kyrgyzstan")
(define-country "Laos")
(define-country "Latvia")
(define-country "Lebanon" :adjective "Lebanese")
(define-country "Lesotho")
(define-country "Liberia")
(define-country "Libya" :adjective "Libyan"
                :cities '("Tripoli"))
(define-country "Liechtenstein")
(define-country "Lithuania")
(define-country "Luxembourg" :adjective "Luxembourgish")
(define-country "Macedonia")
(define-country "Macau" :aliases '("Macao")) ;; Chinese province?
(define-country "Madagascar" :adjective "Malagasy")
(define-country "Malawi")
(define-country "Malaysia")
(define-country "Maldives")
(define-country "Mali")
(define-country "Malta" :adjective "Maltese")
(define-country "Marshall Islands")
(define-country "Mauritania")
(define-country "Mauritius")
(define-country "Mexico" :adjective "Mexican"
                :provinces '("Aguascalientes" "Campeche" "Coahuila" "Colima" "Durango"
                             "Guanajuato" "Jalisco" "Michoacán" "Nayarit" "Querétaro"
                             "Sinaloa" "Tabasco" "Tamaulipas" "Tlaxcala"
                             "Yucatán" "Yucatan" "Zacatecas"))
(define-country "Moldova")
(define-country "Monaco")
(define-country "Mongolia")
(define-country "Montenegro")
(define-country "Morocco")
(define-country "Mozambique")
(define-country "Namibia")
(define-country "Nauru")
(define-country "Nepal" :adjective '("Nepali" "Nepalese"))
(define-country "Netherlands" :adjective "Dutch" :aliases '("Holland")
                :cities '("Amsterdam" "Utrecht"))
  (define-country "Aruba")
  (define-country "Curaçao")
(define-country "New Zealand")
(define-country "Nicaragua")
(define-country "Niger")
(define-country "Nigeria")
(define-country "North Korea" :adjective "North Korean")
(define-country "Norway" :adjective "Norwegian"
                :provinces '("Svalbard")) 
(define-country "Oman")
(define-country "Pakistan" :adjective "Pakistani"
  :cities '("Islamabad" "Lahore"))                
(define-country "Palau")
(define-country "Panama")
(define-country "Papua New Guinea")
(define-country "Paraguay")
(define-country "Peru")
(define-country "Philippines" :adjective "Filipino" :aliases '("Phillippines"))
(define-country "Poland")
(define-country "Portugal" :adjective "Portuguese"
                :cities '("Lisbon"))
(define-country "Qatar")
(define-country "Romania")
(define-country "Russia" :adjective "Russian"
                :cities '("Moscow" "St. Petersburg"))
(define-country "Rwanda" :adjective "Rwandan")
(define-country "Saint Kitts and Nevis")
(define-country "Saint Lucia")
(define-country "Saint Vincent and the Grenadines")
(define-country "Samoa")
(define-country "San Marino")
(define-country "Sao Tome and Principe")
(define-country "Saudi Arabia" :adjective "Saudi Arabian"
                :cities '("Riyadh"))
(define-country "Senegal" :adjective "Senegalese"
                :cities '("Dakar"))
(define-country "Serbia")
(define-country "Seychelles")
(define-country "Sierra Leone")
(define-country "Singapore" :adjective "Singaporean") ;; city state
(define-country "Slovakia")
(define-country "Slovenia")
(define-country "Solomon Islands")
(define-country "Somalia" :adjective "Somali")
(define-country "South Africa")
(define-country "South Korea"
    :adjective "South Korean"
    :cities '("Daegu"))
(define-country "Spain" :adjective '("Spanish" "spanish")) ;; have seen lower case
(define-country "Sri Lanka")
(define-country "Sudan")
(define-country "Suriname" :adjective "Surinamese")
(define-country "Swaziland")
(define-country "Sweden" :adjective "Swedish")
(define-country "Switzerland" :adjective '("Swiss" "swiss")
                :cities '("Basel"))
(define-country "Syria")
(define-country "Taiwan" :adjective "Taiwanese"
                :cities '("Taipei"))
(define-country "Tajikistan")
(define-country "Tanzania")
(define-country "Thailand" :adjective "Thai"
                :cities '("Bangkok"))
(define-country "Timor-Leste")
(define-country "Togo")
(define-country "Tonga")
(define-country "Trinidad and Tobago")
(define-country "Tunisia")
(define-country "Turkey" :adjective "Turkish")
(define-country "Turkmenistan")
(define-country "Tuvalu")
(define-country "Uganda" :adjective "Ugandan")
(define-country "Ukraine")
(define-country "United Arab Emirates")
(define-country "United States"
  :aliases '("US" "U.S." "U.S.A." "America" )
  :adjective '("American")
  :cities '("Washington, D.C." "New York"
            "San Francisco" "Miami" "Boston" "Sunnyvale" "Seattle" "Portland" "Newark"
            "Minneapolis" "Milwaukee" "Indianapolis" "Denver" "Chicago"
            "Charlottesville" "Atlanta"))
(define-country "Uruguay")
(define-country "Uzbekistan")
(define-country "Vanuatu")
(define-country "Venezuela" :adjective "Venezuelan")
(define-country "Vietnam" :aliases '("VietNam") :adjective "Vietnamese")
(define-country "Yemen")
(define-country "Zambia")
(define-country "Zimbabwe")


;;---  pseudoo countries, named regions
;; should have a different treatment, but this will do until we
;;   need to fuse with "northern Iraq"
(define-country "Kurdistan" :adjective "Kurdish") ;; Kurds
;; merology with other countries might be easy to do

(define-country "Gaza" :aliases '("Gaza Strip"))
(define-country "West Bank")
;;  Palestine
;;  Siberia
(define-country "Tibet" :adjective "Tibetan")
(define-country "Korea" :adjective "Korean") ;; we have examples of both tibetan and korean

(define-country "Corsica" :adjective "Corsican")

(define-country "Yugoslavia") 
;; hack - because countries can't be pluralized, we need a way to refer to the continents collectively
(define-country "Americas")
